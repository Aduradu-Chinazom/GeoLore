import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirestoreService {
  static final FirebaseFirestore _db = FirebaseFirestore.instance;
  static final FirebaseAuth _auth = FirebaseAuth.instance;

  // ─── USER ───────────────────────────────────────────────

  // Save user on register
  static Future<void> createUser({
    required String uid,
    required String firstName,
    required String lastName,
    required String username,
    required String email,
  }) async {
    await _db.collection('users').doc(uid).set({
      'firstName': firstName,
      'lastName': lastName,
      'username': username,
      'email': email,
      'tribe': '',
      'country': '',
      'location': '',
      'profilePicture': '',
      'createdAt': DateTime.now(),
    });
  }

  // Update tribe/country/location after WhereAreYouFrom screen
  static Future<void> updateUserCulture({
    required String tribe,
    required String country,
    required String location,
  }) async {
    final String uid = _auth.currentUser!.uid;
    await _db.collection('users').doc(uid).update({
      'tribe': tribe,
      'country': country,
      'location': location,
    });
  }

  // Get current user profile
  static Future<Map<String, dynamic>?> getCurrentUser() async {
    final String uid = _auth.currentUser!.uid;
    final doc = await _db.collection('users').doc(uid).get();
    return doc.data();
  }

  // ─── TUTORS ─────────────────────────────────────────────

  // Get all tutors
  static Stream<QuerySnapshot> getTutors() {
    return _db.collection('tutors').snapshots();
  }

  // Get single tutor
  static Future<Map<String, dynamic>?> getTutor(String tutorId) async {
    final doc = await _db.collection('tutors').doc(tutorId).get();
    return doc.data();
  }

  // ─── APPOINTMENTS ────────────────────────────────────────

  // Book appointment
  static Future<void> bookAppointment({
    required String tutorId,
    required String tutorName,
    required String date,
    required String timeFrom,
    required String timeTo,
    required double price,
  }) async {
    final String uid = _auth.currentUser!.uid;
    final userDoc = await _db.collection('users').doc(uid).get();
    final String studentName =
        '${userDoc['firstName']} ${userDoc['lastName']}';

    await _db.collection('appointments').add({
      'studentId': uid,
      'studentName': studentName,
      'tutorId': tutorId,
      'tutorName': tutorName,
      'date': date,
      'timeFrom': timeFrom,
      'timeTo': timeTo,
      'price': price,
      'status': 'pending',
      'cancelReason': '',
      'createdAt': DateTime.now(),
    });
  }

  // Get appointments for current user
  static Stream<QuerySnapshot> getMyAppointments() {
    final String uid = _auth.currentUser!.uid;
    return _db
        .collection('appointments')
        .where('studentId', isEqualTo: uid)
        .orderBy('createdAt', descending: true)
        .snapshots();
  }

  // Cancel appointment
  static Future<void> cancelAppointment({
    required String appointmentId,
    required String reason,
  }) async {
    await _db.collection('appointments').doc(appointmentId).update({
      'status': 'cancelled',
      'cancelReason': reason,
    });
  }

  // ─── REVIEWS ────────────────────────────────────────────

  // Get reviews for a tutor
  static Stream<QuerySnapshot> getTutorReviews(String tutorId) {
    return _db
        .collection('reviews')
        .where('tutorId', isEqualTo: tutorId)
        .orderBy('date', descending: true)
        .snapshots();
  }

  // Add a review
  static Future<void> addReview({
    required String tutorId,
    required double rating,
    required String text,
  }) async {
    final String uid = _auth.currentUser!.uid;
    final userDoc = await _db.collection('users').doc(uid).get();
    final String studentName =
        '${userDoc['firstName']} ${userDoc['lastName']}';

    await _db.collection('reviews').add({
      'tutorId': tutorId,
      'studentId': uid,
      'studentName': studentName,
      'rating': rating,
      'text': text,
      'helpfulYes': 0,
      'helpfulNo': 0,
      'date': DateTime.now(),
    });
  }

  // ─── CLASSES ────────────────────────────────────────────

  // Get classes for current user
  static Stream<QuerySnapshot> getMyClasses() {
    final String uid = _auth.currentUser!.uid;
    return _db
        .collection('classes')
        .where('studentId', isEqualTo: uid)
        .orderBy('date', descending: false)
        .snapshots();
  }

  // ─── AI CHAT ────────────────────────────────────────────

  // Save chat message
  static Future<void> saveChatMessage({
    required String role,
    required String text,
  }) async {
    final String uid = _auth.currentUser!.uid;
    await _db
        .collection('chats')
        .doc(uid)
        .collection('messages')
        .add({
      'role': role,
      'text': text,
      'timestamp': DateTime.now(),
    });
  }

  // Get chat history
  static Stream<QuerySnapshot> getChatHistory() {
    final String uid = _auth.currentUser!.uid;
    return _db
        .collection('chats')
        .doc(uid)
        .collection('messages')
        .orderBy('timestamp', descending: false)
        .snapshots();
  }

  // Clear chat history
  static Future<void> clearChatHistory() async {
    final String uid = _auth.currentUser!.uid;
    final messages = await _db
        .collection('chats')
        .doc(uid)
        .collection('messages')
        .get();

    for (var doc in messages.docs) {
      await doc.reference.delete();
    }
  }
}