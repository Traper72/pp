using Microsoft.VisualStudio.TestTools.UnitTesting;
using SF2022UserLib;
using System;

namespace UnitTestProject
{
    [TestClass]
    public class UnitTest
    {
        [TestMethod]
        public void Test1_CorrectDataConsultationTime30_ReturnStringArrayOf14Item()
        {
            TimeSpan[] timeSpans = {
                new TimeSpan(10, 0, 0),
                new TimeSpan(11, 0, 0),
                new TimeSpan(15, 0, 0),
                new TimeSpan(15, 30, 0),
                new TimeSpan(16, 50, 0)
            };

            int[] durations = { 60, 30, 10, 10, 40 };
            TimeSpan start = new TimeSpan(8, 0, 0);
            TimeSpan end = new TimeSpan(18, 0, 0);
            int consult = 30;

            string[] expectation =
            {
                "08:00-08:30",
                "08:30-09:00",
                "09:00-09:30",
                "09:30-10:00",
                "11:30-12:00",
                "12:00-12:30",
                "12:30-13:00",
                "13:00-13:30",
                "13:30-14:00",
                "14:00-14:30",
                "14:30-15:00",
                "15:40-16:10",
                "16:10-16:40",
                "17:30-18:00",
            };

            CollectionAssert.AreEqual(expectation, Calculations.AvailablePeriods(timeSpans, durations, start, end, consult));
        }

        [TestMethod]
        public void Test2_CorrectDataConsultationTime30_ReturnStringArrayOf15Item()
        {
            TimeSpan[] timeSpans = {
                new TimeSpan(10, 0, 0),
                new TimeSpan(11, 0, 0),
                new TimeSpan(15, 0, 0),
                new TimeSpan(15, 30, 0),
                new TimeSpan(16, 50, 0)
            };

            int[] durations = { 60, 30, 10, 10, 40 };
            TimeSpan start = new TimeSpan(8, 0, 0);
            TimeSpan end = new TimeSpan(18, 30, 0);
            int consult = 30;

            string[] expectation =
            {
                "08:00-08:30",
                "08:30-09:00",
                "09:00-09:30",
                "09:30-10:00",
                "11:30-12:00",
                "12:00-12:30",
                "12:30-13:00",
                "13:00-13:30",
                "13:30-14:00",
                "14:00-14:30",
                "14:30-15:00",
                "15:40-16:10",
                "16:10-16:40",
                "17:30-18:00",
                "18:00-18:30"
            };

            CollectionAssert.AreEqual(expectation, Calculations.AvailablePeriods(timeSpans, durations, start, end, consult));
        }

        [TestMethod]
        public void Test3_CorrectDataConsultationTime40_ReturnStringArrayOf9Item()
        {
            TimeSpan[] timeSpans = {
                new TimeSpan(10, 0, 0),
                new TimeSpan(11, 0, 0),
                new TimeSpan(15, 0, 0),
                new TimeSpan(15, 30, 0),
                new TimeSpan(16, 50, 0)
            };

            int[] durations = { 60, 30, 10, 10, 40 };
            TimeSpan start = new TimeSpan(8, 0, 0);
            TimeSpan end = new TimeSpan(18, 0, 0);
            int consult = 40;

            string[] expectation =
            {
               "08:00-08:40",
               "08:40-09:20",
               "09:20-10:00",
               "11:30-12:10",
               "12:10-12:50",
               "12:50-13:30",
               "13:30-14:10",
               "14:10-14:50",
               "15:40-16:20",
            };

            CollectionAssert.AreEqual(expectation, Calculations.AvailablePeriods(timeSpans, durations, start, end, consult));
        }

        [TestMethod]
        public void Test4_CorrectDataConsultationTime40_ReturnStringArrayOf10Item()
        {
            TimeSpan[] timeSpans = {
                new TimeSpan(10, 0, 0),
                new TimeSpan(11, 0, 0),
                new TimeSpan(15, 0, 0),
                new TimeSpan(15, 30, 0),
                new TimeSpan(16, 50, 0)
            };

            int[] durations = { 60, 30, 10, 10, 40 };
            TimeSpan start = new TimeSpan(8, 0, 0);
            TimeSpan end = new TimeSpan(18, 10, 0);
            int consult = 40;

            string[] expectation =
            {
               "08:00-08:40",
               "08:40-09:20",
               "09:20-10:00",
               "11:30-12:10",
               "12:10-12:50",
               "12:50-13:30",
               "13:30-14:10",
               "14:10-14:50",
               "15:40-16:20",
               "17:30-18:10"
            };

            CollectionAssert.AreEqual(expectation, Calculations.AvailablePeriods(timeSpans, durations, start, end, consult));
        }

        [TestMethod]
        public void Test5_CorrectDataConsultationTime10_ReturnStringArrayOf45Item()
        {
            TimeSpan[] timeSpans = {
                new TimeSpan(10, 0, 0),
                new TimeSpan(11, 0, 0),
                new TimeSpan(15, 0, 0),
                new TimeSpan(15, 30, 0),
                new TimeSpan(16, 50, 0)
            };

            int[] durations = { 60, 30, 10, 10, 40 };
            TimeSpan start = new TimeSpan(8, 0, 0);
            TimeSpan end = new TimeSpan(18, 0, 0);
            int consult = 10;

            string[] expectation =
            {
                "08:00-08:10",
                "08:10-08:20",
                "08:20-08:30",
                "08:30-08:40",
                "08:40-08:50",
                "08:50-09:00",
                "09:00-09:10",
                "09:10-09:20",
                "09:20-09:30",
                "09:30-09:40",
                "09:40-09:50",
                "09:50-10:00",
                "11:30-11:40",
                "11:40-11:50",
                "11:50-12:00",
                "12:00-12:10",
                "12:10-12:20",
                "12:20-12:30",
                "12:30-12:40",
                "12:40-12:50",
                "12:50-13:00",
                "13:00-13:10",
                "13:10-13:20",
                "13:20-13:30",
                "13:30-13:40",
                "13:40-13:50",
                "13:50-14:00",
                "14:00-14:10",
                "14:10-14:20",
                "14:20-14:30",
                "14:30-14:40",
                "14:40-14:50",
                "14:50-15:00",
                "15:10-15:20",
                "15:20-15:30",
                "15:40-15:50",
                "15:50-16:00",
                "16:00-16:10",
                "16:10-16:20",
                "16:20-16:30",
                "16:30-16:40",
                "16:40-16:50",
                "17:30-17:40",
                "17:40-17:50",
                "17:50-18:00",
            };

            CollectionAssert.AreEqual(expectation, Calculations.AvailablePeriods(timeSpans, durations, start, end, consult));
        }

        [TestMethod]
        public void Test6_CorrectDataConsultationTime10_ReturnStringArrayOf15Item()
        {
            TimeSpan[] timeSpans = {};

            int[] durations = {};
            TimeSpan start = new TimeSpan(8, 0, 0);
            TimeSpan end = new TimeSpan(13, 0, 0);
            int consult = 20;

            string[] expectation =
            {
                "08:00-08:20",
                "08:20-08:40",
                "08:40-09:00",
                "09:00-09:20",
                "09:20-09:40",
                "09:40-10:00",
                "10:00-10:20",
                "10:20-10:40",
                "10:40-11:00",
                "11:00-11:20",
                "11:20-11:40",
                "11:40-12:00",
                "12:00-12:20",
                "12:20-12:40",
                "12:40-13:00",
            };

            CollectionAssert.AreEqual(expectation, Calculations.AvailablePeriods(timeSpans, durations, start, end, consult));
        }

        [TestMethod]
        public void Test7_IncorrectStartAndEndTime_ReturnStringArrayOfEmpty()
        {
            TimeSpan[] timeSpans = {
                new TimeSpan(10, 0, 0),
                new TimeSpan(11, 0, 0),
                new TimeSpan(15, 0, 0),
                new TimeSpan(15, 30, 0),
                new TimeSpan(16, 50, 0)
            };

            int[] durations = { 60, 30, 10, 10, 40 };
            TimeSpan start = new TimeSpan(18, 0, 0);
            TimeSpan end = new TimeSpan(8, 0, 0);
            int consult = 40;

            string[] expectation = Array.Empty<string>();

            CollectionAssert.AreEqual(expectation, Calculations.AvailablePeriods(timeSpans, durations, start, end, consult));
        }

        [TestMethod]
        public void Test8_CorrectDuration480_ReturnStringArrayOf1Item()
        {
            TimeSpan[] timeSpans = {
                new TimeSpan(8, 20, 0),
            };

            int[] durations = { 480 };
            TimeSpan start = new TimeSpan(8, 0, 0);
            TimeSpan end = new TimeSpan(16, 0, 0);
            int consult = 20;

            string[] expectation =
            {
                "08:00-08:20",
            };
            CollectionAssert.AreEqual(expectation, Calculations.AvailablePeriods(timeSpans, durations, start, end, consult));
        }

        [TestMethod]
        public void Test9_IncorrectStartAndEndTime_ReturnStringArrayOfEmpty2()
        {
            TimeSpan[] timeSpans = {
                new TimeSpan(10, 0, 0),
                new TimeSpan(11, 0, 0),
                new TimeSpan(15, 0, 0),
                new TimeSpan(15, 30, 0),
                new TimeSpan(16, 50, 0)
            };

            int[] durations = { 60, 30, 10, 10, 40 };
            TimeSpan start = new TimeSpan(8, 0, 0);
            TimeSpan end = new TimeSpan(8, 10, 0);
            int consult = 40;

            string[] expectation = Array.Empty<string>();

            CollectionAssert.AreEqual(expectation, Calculations.AvailablePeriods(timeSpans, durations, start, end, consult));
        }

        [TestMethod]
        public void Test10_IncorrectTimeSpanNull_ReturnArgumentNullException()
        {
            TimeSpan[] timeSpans = null;

            int[] durations = { 60, 30, 10, 10, 40 };
            TimeSpan start = new TimeSpan(8, 0, 0);
            TimeSpan end = new TimeSpan(18, 0, 0);
            int consult = 40;

            string[] expectation = Array.Empty<string>();

            Assert.ThrowsException<NullReferenceException>(() => Calculations.AvailablePeriods(timeSpans, durations, start, end, consult));
        }
    }
}
