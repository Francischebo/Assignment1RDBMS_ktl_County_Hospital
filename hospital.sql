-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` bigint(11) NOT NULL,
  `staff_id` varchar(15) NOT NULL,
  `department` int(11) NOT NULL,
  `designation` int(11) NOT NULL,
  `staff_role` int(11) NOT NULL,
  `cType` varchar(25) NOT NULL,
  `title` int(11) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(25) NOT NULL,
  `age` int(2) NOT NULL,
  `street` varchar(50) NOT NULL,
  `subd_brgy` varchar(50) NOT NULL,
  `province` char(50) NOT NULL,
  `phone_no` varchar(15) NOT NULL,
  `mobile_no` varchar(15) NOT NULL,
  `gender` int(1) NOT NULL,
  `civil_status` int(1) NOT NULL,
  `birthday` date NOT NULL,
  `birthplace` varchar(100) NOT NULL,
  `email_address` varchar(75) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(50) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `doctorIsIn` varchar(10) NOT NULL,
  `doctorLastIn` varchar(25) NOT NULL,
  `doctorLastOut` varchar(25) NOT NULL,
  `InActive` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `staff_id`, `department`, `designation`, `staff_role`, `cType`, `title`, `lastname`, `firstname`, `middlename`, `age`, `street`, `subd_brgy`, `province`, `phone_no`, `mobile_no`, `gender`, `civil_status`, `birthday`, `birthplace`, `email_address`, `username`, `password`, `picture`, `doctorIsIn`, `doctorLastIn`, `doctorLastOut`, `InActive`) VALUES
(5, '00002', 1, 1, 1, '', 7, 'Ramos', 'Mark', 'S', 38, '', '', '', '', '', 1, 4, '1978-03-16', 'Cavite', 'sert@serttech.com', 'ioioio', '101a6ec9f938885df0a44f20458d2eb4', '', '0', '', '', 0);

--
-- Table structure for table `staff_roles`
--

CREATE TABLE `staff_roles` (
  `role_id` int(11) NOT NULL,
  `module` varchar(50) DEFAULT NULL,
  `role_name` varchar(50) DEFAULT NULL,
  `role_description` text DEFAULT NULL,
  `InActive` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_roles`
--

INSERT INTO `staff_roles` (`role_id`, `module`, `role_name`, `role_description`, `InActive`) VALUES
(1, '0', 'Super Admin', 'Full Access of the entire system', 0),
(2, 'administrator', 'Administrator and CEO', 'Minimal supervision', 0),
(3, '0', 'Receptionist', 'Help Desk Officer', 0),
(5, 'doctor', 'Doctor', 'Doctor', 0),
(6, 'billing', 'Billing / Cashier', 'Billing / Cashier', 0),
(7, '0', 'Nurse Roles', 'Nurse Roles', 0),
(8, '0', 'IT DEPARTMENT', 'IT ADMIN', 0);

-- --------------------------------------------------------

-- Table structure for table `patient_details_ip`
--

CREATE TABLE `patient_details_ip` (
  `id` bigint(11) NOT NULL,
  `IO_ID` varchar(15) NOT NULL,
  `patient_no` varchar(15) NOT NULL,
  `patient_type` varchar(5) NOT NULL,
  `date_visit` date NOT NULL,
  `time_visit` time NOT NULL,
  `doctor_id` varchar(15) NOT NULL,
  `refferal_doctor` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `provisional_diagnosis` text NOT NULL,
  `complaints` text NOT NULL,
  `allergies` text NOT NULL,
  `warnings` text NOT NULL,
  `social_history` text NOT NULL,
  `family_history` text NOT NULL,
  `personal_history` text NOT NULL,
  `past_medical_history` text NOT NULL,
  `pulse_rate` varchar(150) NOT NULL,
  `temperature` varchar(150) NOT NULL,
  `height` varchar(150) NOT NULL,
  `bp` varchar(150) NOT NULL,
  `respiration` varchar(150) NOT NULL,
  `weight` varchar(150) NOT NULL,
  `nStatus` varchar(15) NOT NULL,
  `InActive` int(1) NOT NULL,
  `isPaid` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_details_ip`
--

INSERT INTO `patient_details_ip` (`id`, `IO_ID`, `patient_no`, `patient_type`, `date_visit`, `time_visit`, `doctor_id`, `refferal_doctor`, `room_id`, `department_id`, `provisional_diagnosis`, `complaints`, `allergies`, `warnings`, `social_history`, `family_history`, `personal_history`, `past_medical_history`, `pulse_rate`, `temperature`, `height`, `bp`, `respiration`, `weight`, `nStatus`, `InActive`, `isPaid`) VALUES
(1, 'OP-000017', '000039', 'OPD', '2017-02-24', '07:26:54', '00007', 7, 0, 8, '', '', 'Allergies here', 'Warnings here', 'Social History here', 'Family History here', 'Personal History here', 'Past Medical History here', '10', '30', '50', '20', '40', '60', 'Discharged', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `patient_personal_info`
--

CREATE TABLE `patient_personal_info` (
  `reg_no` bigint(11) NOT NULL,
  `patient_no` varchar(15) NOT NULL,
  `title` int(11) NOT NULL,
  `lastname` varchar(35) NOT NULL,
  `firstname` varchar(35) NOT NULL,
  `middlename` varchar(25) NOT NULL,
  `gender` int(11) NOT NULL,
  `civil_status` int(11) NOT NULL,
  `birthday` date NOT NULL,
  `birthplace` varchar(150) NOT NULL,
  `fathers_name` varchar(150) NOT NULL,
  `address1` text NOT NULL,
  `address2` text NOT NULL,
  `age` int(3) NOT NULL,
  `religion` int(11) NOT NULL,
  `street` varchar(50) NOT NULL,
  `subd_brgy` varchar(90) NOT NULL,
  `province` varchar(90) NOT NULL,
  `phone_no` varchar(25) NOT NULL,
  `phone_no_office` varchar(25) NOT NULL,
  `mobile_no` varchar(25) NOT NULL,
  `email_address` varchar(50) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `date_entry` datetime NOT NULL,
  `blood_group` int(11) NOT NULL,
  `Insurance_comp` int(11) NOT NULL,
  `insurance_no` varchar(25) NOT NULL,
  `id_identifiers` text NOT NULL,
  `InActive` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_personal_info`
--

INSERT INTO `patient_personal_info` (`reg_no`, `patient_no`, `title`, `lastname`, `firstname`, `middlename`, `gender`, `civil_status`, `birthday`, `birthplace`, `fathers_name`, `address1`, `address2`, `age`, `religion`, `street`, `subd_brgy`, `province`, `phone_no`, `phone_no_office`, `mobile_no`, `email_address`, `picture`, `date_entry`, `blood_group`, `Insurance_comp`, `insurance_no`, `id_identifiers`, `InActive`) VALUES
(1, '000039', 7, 'Dela', 'Ferdinand', '', 1, 3, '2022-05-30', '', '', '', '', 75, 0, '', '', '', '', '', '', '', '', '2023-02-24 06:42:43', 0, 0, '', '', 0);

-- --------------------------------------------------------


--
-- Table structure for table `patient_appointment`
--

CREATE TABLE `patient_appointment` (
  `appID` bigint(20) NOT NULL,
  `patient_no` varchar(25) NOT NULL,
  `appointmentDate` date NOT NULL,
  `appHour` tinyint(2) NOT NULL,
  `appMinutes` tinyint(2) NOT NULL,
  `appAMPM` varchar(10) NOT NULL,
  `appointmentTime` time NOT NULL,
  `appointmentReason` tinytext NOT NULL,
  `consultantDoctor` varchar(10) NOT NULL,
  `dateVisit` datetime NOT NULL,
  `appointmentStatus` char(1) NOT NULL,
  `dateEntry` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient_attachment`
--

CREATE TABLE `patient_attachment` (
  `attach_id` int(11) NOT NULL,
  `patient_no` varchar(25) NOT NULL,
  `date_uploaded` datetime NOT NULL,
  `uploaded_by` int(11) NOT NULL,
  `description` varchar(155) NOT NULL,
  `file_name` varchar(150) NOT NULL,
  `file_type` varchar(150) NOT NULL,
  `file_size` varchar(50) NOT NULL,
  `InActive` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-----------------------------

--
-- Table structure for table `bill_group_name`
--

CREATE TABLE `bill_group_name` (
  `group_id` int(11) NOT NULL,
  `group_name` varchar(150) NOT NULL,
  `group_desc` text NOT NULL,
  `InActive` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill_group_name`
--

INSERT INTO `bill_group_name` (`group_id`, `group_name`, `group_desc`, `InActive`) VALUES
(1, 'Consultant2', 'Consultant2', 1),
(2, 'CONSULTANT', 'Consultant', 0),
(3, 'MISCELLANEOUS', 'Miscellaneous', 0),
(4, 'ADMISSION CHARGES', 'Admission Charges', 0),
(5, 'INJECTIONS', 'Injections', 0),
(6, 'DRESSING', 'Dressing', 0),
(7, 'SURGICAL ASSISTANT', 'Surgical Assistant', 0),
(8, 'HAEMATOLOGY', 'Haematology', 0),
(9, 'BIOCHEMISTRY', 'Biochemistry', 0),
(10, 'CLINICAL PATHOLOGY', 'Clinical Pathology', 0),
(11, 'MICROBIOLOGY', 'Microbiology', 0),
(12, 'SEROLOGY', 'Serology', 0),
(13, 'TRANSFUSION MEDICINE', 'Transfusion Medicine', 0),
(14, 'SPECIAL TESTS', 'Special Tests', 0),
(15, 'HISTOPATHOLOGY', 'Histopathology', 0),
(16, 'X -RAYS', 'X-RAYS', 0),
(17, 'CT SCAN', 'CT Scan', 0),
(18, 'ULTRASONOGRAPHY', 'UltraSonography', 0),
(19, 'UROLOGY', 'UROLOGY', 0),
(20, 'CARDIAC', 'CARDIAC', 0),
(21, 'PSYCHOLOGY TEST', 'Psychology Test', 0),
(22, 'SKIN & VD', 'SKIN & VD', 0),
(23, 'ONCOLOGY', 'ONCOLOGY', 0),
(24, 'PROCEDURE CHARGES', 'Procedure Charges', 0),
(25, 'WARD SERVICES', 'Ward Services', 0),
(26, 'NEUROLOGY', 'NEUROLOGY', 0),
(27, 'DENTAL TREATMENT', 'Dental Treatment', 0),
(28, 'PHYSIOTHERAPY', 'Physiotherapy', 0),
(29, 'PLASTIC SURGICAL PRO', 'Plastic Surgical Pro ', 0),
(30, 'OPERATION THEATER', 'Operation Theater', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bill_particular`
--

CREATE TABLE `bill_particular` (
  `particular_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `particular_name` varchar(150) NOT NULL,
  `particular_desc` text NOT NULL,
  `charge_amount` float(11,2) NOT NULL,
  `InActive` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill_particular`
--

INSERT INTO `bill_particular` (`particular_id`, `group_id`, `particular_name`, `particular_desc`, `charge_amount`, `InActive`) VALUES
(1, 2, 'TEST CONSULTANT', 'Test Consultant', 150.00, 0),
(2, 2, 'GENERAL CONSULTATION', 'General Consultation', 250.00, 0),
(3, 2, 'EXTENDED CONSULTANT', 'Extended Consultant', 250.00, 0),
(4, 2, 'SPECIALISTS CONSULTANT', 'Specialists Consultant', 500.00, 0);
-- --------------------------------------------------------

--
-- Table structure for table `code igniter sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('aaaa522c1e39d873bdea9947c8f66ce1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36', 1403771284, '');

-- --------------------------------------------------------

--
-- Table structure for table `company_info`
--

CREATE TABLE `company_info` (
  `company_name` varchar(150) NOT NULL,
  `company_address` text NOT NULL,
  `company_contactNo` varchar(50) NOT NULL,
  `TIN` varchar(50) NOT NULL,
  `logo` varchar(900) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_info`
--

INSERT INTO `company_info` (`company_name`, `company_address`, `company_contactNo`, `TIN`, `logo`) VALUES
('DEMO HOSPITAL CENTER', 'Somewhere', ' 331 9233', '123-456-789', 'logo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `complain`
--

CREATE TABLE `complain` (
  `complain_id` int(11) NOT NULL,
  `complain_name` varchar(999) NOT NULL,
  `complain_desc` text NOT NULL,
  `InActive` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complain`
--

INSERT INTO `complain` (`complain_id`, `complain_name`, `complain_desc`, `InActive`) VALUES
(3, 'ABDOMINAL AND PELVIC PAIN', 'Abdominal and pelvic pain', 0),
(4, 'ABNORMAL UTERINE BLEEDING', 'Abnormal uterine bleeding ', 0),
(5, 'ANXIETY, DEPRESSION', 'Anxiety, depression', 0),
(6, 'BACK PAIN', 'Back pain', 0),
(7, 'CHEST PAIN', 'Chest pain ', 0),
(8, 'COUGH', 'Cough', 0);
-- --------------------------------------------------------

--
-- Table structure for table `declared`
--

CREATE TABLE `declared` (
  `id` int(11) NOT NULL,
  `receipt_no` varchar(25) NOT NULL,
  `invoice_no` varchar(25) NOT NULL,
  `old_receipt_no` varchar(25) NOT NULL,
  `dDate` date NOT NULL,
  `iop_id` varchar(25) NOT NULL,
  `patient_no` varchar(25) NOT NULL,
  `payment_type` varchar(25) NOT NULL,
  `discount` float(11,2) NOT NULL,
  `subtotal` float(11,2) NOT NULL,
  `total_amount` float(11,2) NOT NULL,
  `amountPaid` float(11,2) NOT NULL,
  `change` float(11,2) NOT NULL,
  `total_purchased` int(3) NOT NULL,
  `InActive` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `declared`
--

INSERT INTO `declared` (`id`, `receipt_no`, `invoice_no`, `old_receipt_no`, `dDate`, `iop_id`, `patient_no`, `payment_type`, `discount`, `subtotal`, `total_amount`, `amountPaid`, `change`, `total_purchased`, `InActive`) VALUES
(5, 'OR-1', 'SI-000027', 'OR-000011', '2014-07-31', 'OR-000011', '000001', 'cash', 600.00, 9600.00, 9000.00, 10000.00, 400.00, 2, 0),
(6, 'OR-02', 'SI-000028', 'OR-000012', '2014-07-31', 'OR-000012', '000011', 'cash', 55.00, 155.00, 100.00, 160.00, 5.00, 3, 1);
-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL,
  `dept_code` varchar(100) NOT NULL,
  `dept_name` varchar(150) NOT NULL,
  `InActive` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `dept_code`, `dept_name`, `InActive`) VALUES
(1, 'MIS', 'Management Information System', 0),
(2, 'Front Desk', 'Front Desk', 0),
(3, 'asd2', 'asd23', 1),
(4, 'Cardiology', 'Cardiology', 0),
(5, 'Anaesthetics', 'Anaesthetics', 0),
(6, 'Assistants', 'Assistants', 1),
(7, 'sdf', 'sdf', 1),
(8, 'Casualty', 'Casualty', 0),
(9, 'Breast screenin', 'Breast screening', 0),
(10, 'Chaplaincy', 'Chaplaincy', 0),
(11, 'Intensive Care Unit (ICU)', 'Intensive Care Unit (ICU)', 0),
(12, 'Radiography', 'Radiography', 0),
(13, 'Discharge lounge', 'Discharge lounge', 0),
(14, 'Ear nose and throat (ENT)', 'Ear nose and throat (ENT)', 0),
(15, 'Elderly services department', 'Elderly services department', 0),
(16, 'Gastroenterology', 'Gastroenterology', 0),
(17, 'General surgery', 'General surgery', 0),
(18, 'Gynaecology', 'Gynaecology', 0),
(19, 'Maternity departments', 'Maternity departments', 0),
(20, 'Microbiology', 'Microbiology', 0),
(21, 'Neonatal unit', 'Neonatal unit', 0),
(22, 'Nephrology', 'Nephrology', 0),
(23, 'Neurology', 'Neurology', 0),
(24, 'Nutrition and dietetics', 'Nutrition and dietetics', 0),
(25, 'Obstetrics and gynaecology units', 'Obstetrics and gynaecology units', 0),
(26, 'Occupational therapy', 'Occupational therapy', 0),
(27, 'Oncology', 'Oncology', 0),
(28, 'Ophthalmology', 'Ophthalmology', 0),
(29, 'Orthopaedics', 'Orthopaedics', 0),
(30, 'Physiotherapy', 'Physiotherapy', 0),
(31, 'Radiotherapy', 'Radiotherapy', 0),
(32, 'Renal unit', 'Renal unit', 0),
(33, 'Rheumatology', 'Rheumatology', 0),
(34, 'Genitourinary Department', 'Sexual health (genitourinary medicine)', 0),
(35, 'Urology', 'Urology', 0),
(36, 'Dental Department', 'Dental Department', 0),
(37, 'a', 'a', 1),
(38, 'BILLING', 'BILLING', 0),
(39, 'IT DEPARTMENT', 'IT DEPARTMENT', 0);

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `designation_id` int(11) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `description` varchar(150) NOT NULL,
  `InActive` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`designation_id`, `designation`, `description`, `InActive`) VALUES
(1, 'System Administrator', 'System Administrator', 0),
(2, 'Receptionist', 'Receptionist', 0),
(4, 'Doctor', 'Doctor', 0),
(5, 'Nurse', 'Nurse', 0),
(6, 'Pharmacist', 'Pharmacist', 0),
(7, 'CASHIER', 'CASHIER', 0);

-- --------------------------------------------------------

--
-- Table structure for table `diagnosis`
--

CREATE TABLE `diagnosis` (
  `diagnosis_id` int(11) NOT NULL,
  `diagnosis_name` varchar(500) NOT NULL,
  `diagnosis_desc` text NOT NULL,
  `InActive` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diagnosis`
--

INSERT INTO `diagnosis` (`diagnosis_id`, `diagnosis_name`, `diagnosis_desc`, `InActive`) VALUES
(1, 'ABNORMAL HEART RHYTHMS', 'Abnormal Heart Rhythms', 0),
(7, 'ASCITIES', 'Ascities', 0),
(68, 'EYE DISORDERS', 'eye disorders', 0),
(6, 'APPENDICITIES', 'Appendicities', 0),
(8, 'ASTHMA', 'Asthma', 0);
-- --------------------------------------------------------

--
-- Table structure for table `doctors_fee`
--

CREATE TABLE `doctors_fee` (
  `doctorfeeID` int(11) NOT NULL,
  `user_id` varchar(11) DEFAULT NULL,
  `invoice_no` varchar(25) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `completeDate` varchar(50) DEFAULT NULL,
  `feeType` varchar(25) DEFAULT NULL,
  `value` float(11,2) DEFAULT NULL,
  `totalFee` float(11,2) DEFAULT NULL,
  `notes` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors_fee`
--

INSERT INTO `doctors_fee` (`doctorfeeID`, `user_id`, `invoice_no`, `date`, `completeDate`, `feeType`, `value`, `totalFee`, `notes`) VALUES
(1, '00007', 'SI-000036', '2015-11-14', '2015-11-14 09:25:54 pm', 'percentage', 100.00, 0.00, 'cccc');

-- --------------------------------------------------------

--
-- Table structure for table `floor`
--

CREATE TABLE `floor` (
  `floor_id` int(11) NOT NULL,
  `floor_name` varchar(25) NOT NULL,
  `floor_description` text NOT NULL,
  `InActive` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `floor`
--

INSERT INTO `floor` (`floor_id`, `floor_name`, `floor_description`, `InActive`) VALUES
(1, 'Ground Floor', 'Ground Floor', 0),
(2, '2nd Floor', '2nd Floor', 0);

-- --------------------------------------------------------

--
-- Table structure for table `insurance_comp`
--

CREATE TABLE `insurance_comp` (
  `in_com_id` int(11) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `company_address` varchar(100) NOT NULL,
  `phone_no` varchar(15) NOT NULL,
  `fax_no` varchar(25) NOT NULL,
  `email_address` varchar(50) NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  `contact_no_person` varchar(100) NOT NULL,
  `contact_email` varchar(50) NOT NULL,
  `notes` text NOT NULL,
  `InActive` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `insurance_comp`
--

INSERT INTO `insurance_comp` (`in_com_id`, `company_name`, `company_address`, `phone_no`, `fax_no`, `email_address`, `contact_person`, `contact_no_person`, `contact_email`, `notes`, `InActive`) VALUES
(5, 'SHIF Health', '#0001 Street Salcedo Makati City', '02 456 8595', '', 'contactme@yahoo.com', 'za', '091234676454', 'by@yahoo.com', 'remarks of insurance company', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ip_bed_side_procedure`
--

CREATE TABLE `ip_bed_side_procedure` (
  `bed_pro_id` int(11) NOT NULL,
  `ip_id` varchar(25) NOT NULL,
  `dDate` date NOT NULL,
  `dDateTime` varchar(50) NOT NULL,
  `cItem_id` int(11) NOT NULL,
  `qty` int(5) NOT NULL,
  `notes` text NOT NULL,
  `cPreparedBy` varchar(25) NOT NULL,
  `InActive` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `in-patient_billing`
--

CREATE TABLE `ip_billing` (
  `bill_id` int(11) NOT NULL,
  `receipt_no` varchar(25) NOT NULL,
  `Ip_id` varchar(25) DEFAULT NULL,
  `patient_no` varchar(25) DEFAULT NULL,
  `payment_type` varchar(25) DEFAULT NULL,
  `invoice_no` varchar(50) DEFAULT NULL,
  `dDate` date DEFAULT NULL,
  `discount` float(11,2) DEFAULT NULL,
  `reason_discount` int(5) DEFAULT NULL,
  `sub_total` float(11,2) DEFAULT NULL,
  `total_amount` float(11,2) DEFAULT NULL,
  `total_purchased` float(11,2) DEFAULT NULL,
  `creditCardNo` int(11) DEFAULT NULL,
  `creditCardHolder` int(11) DEFAULT NULL,
  `insurance_company` int(11) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `InActive` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ip_billing_totals`
--

CREATE TABLE `ip_billing_totals` (
  `invoice_no` varchar(50) DEFAULT NULL,
  `bill_name` varchar(900) DEFAULT NULL,
  `qty` int(5) DEFAULT NULL,
  `rate` float(11,2) DEFAULT NULL,
  `amount` float(11,2) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `InActive` int(1) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `ip_id` varchar(25) DEFAULT NULL,
  `isPackage` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ip_complaints`
--

CREATE TABLE `ip_complaints` (
  `ip_comp_id` int(11) NOT NULL,
  `ip_id` varchar(25) NOT NULL,
  `complain_id` int(11) NOT NULL,
  `remarks` text NOT NULL,
  `dDate` date NOT NULL,
  `InActive` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ip_complaints`
--

INSERT INTO `ip_complaints` (`ip_comp_id`, `ip_id`, `complain_id`, `remarks`, `dDate`, `InActive`) VALUES
(1, 'OP-000017', 5, 'dasd', '2024-02-24', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ip_diagnosis`
--

CREATE TABLE `ip_diagnosis` (
  `ip_diag_id` int(11) NOT NULL,
  `ip_id` varchar(11) NOT NULL,
  `diagnosis_id` int(11) NOT NULL,
  `remarks` text NOT NULL,
  `dDate` datetime NOT NULL,
  `InActive` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ip_diagnosis`
--

INSERT INTO `ip_diagnosis` (`ip_diag_id`, `ip_id`, `diagnosis_id`, `remarks`, `dDate`, `InActive`) VALUES
(1, 'OP-000017', 1, 'asdasd', '2024-02-24 08:32:14', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ip_discharge_summary`
--

CREATE TABLE `ip_discharge_summary` (
  `dis_id` int(11) NOT NULL,
  `ip_id` varchar(25) NOT NULL,
  `dDate` date NOT NULL,
  `dDateTime` datetime NOT NULL,
  `reason_admission` text NOT NULL,
  `condition_upon_discharge` int(11) NOT NULL,
  `admitting_impression` text NOT NULL,
  `final_diagnosis` text NOT NULL,
  `physical_exam_findings` text NOT NULL,
  `course_ward` text NOT NULL,
  `InActive` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ip_discharge_summary`
--

INSERT INTO `ip_discharge_summary` (`dis_id`, `ip_id`, `dDate`, `dDateTime`, `reason_admission`, `condition_upon_discharge`, `admitting_impression`, `final_diagnosis`, `physical_exam_findings`, `course_ward`, `InActive`) VALUES
(1, 'OP-000017', '2024-02-24', '2024-02-24 08:34:11', 'asdasd', 61, 'asd', 'asd', 'asd', 'asd', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ip_intake_record`
--

CREATE TABLE `ip_intake_record` (
  `intake_id` int(11) NOT NULL,
  `ip_id` varchar(25) NOT NULL,
  `particulars` varchar(500) NOT NULL,
  `IV_fluids` varchar(25) NOT NULL,
  `oral` varchar(25) NOT NULL,
  `no_stool` varchar(25) NOT NULL,
  `no_urine` varchar(25) NOT NULL,
  `dDate` date NOT NULL,
  `dDateTime` varchar(50) NOT NULL,
  `InActive` int(1) NOT NULL,
  `cPreparedBy` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ip_laboratory`
--

CREATE TABLE `ip_laboratory` (
  `io_lab_id` int(11) NOT NULL,
  `ip_id` varchar(11) NOT NULL,
  `dDate` date NOT NULL,
  `dDateTime` varchar(100) NOT NULL,
  `category_id` int(11) NOT NULL,
  `laboratory_id` int(11) NOT NULL,
  `findings` text NOT NULL,
  `result` text NOT NULL,
  `doctor` int(11) NOT NULL,
  `InActive` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ip_laboratory`
--

INSERT INTO `ip_laboratory` (`io_lab_id`, `ip_id`, `dDate`, `dDateTime`, `category_id`, `laboratory_id`, `findings`, `result`, `doctor`, `InActive`) VALUES
(1, 'OP-000017', '2017-02-24', '2017-02-24 08:30 AM', 8, 61, '', '', 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ip_medication`
--

CREATE TABLE `ip_medication` (
  `iop_med_id` int(11) NOT NULL,
  `ip_id` varchar(25) NOT NULL,
  `medicine_id` int(11) NOT NULL,
  `instruction` text NOT NULL,
  `advice` text NOT NULL,
  `days` int(2) NOT NULL,
  `total_qty` int(5) NOT NULL,
  `InActive` int(1) NOT NULL,
  `dDate` datetime NOT NULL,
  `cPreparedBy` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `iop_medication`
--

INSERT INTO `ip_medication` (`iop_med_id`, `ip_id`, `medicine_id`, `instruction`, `advice`, `days`, `total_qty`, `InActive`, `dDate`, `cPreparedBy`) VALUES
(1, 'OP-000017', 11, '', '', 10, 10, 0, '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `ip_nurse_notes`
--

CREATE TABLE `ip_nurse_notes` (
  `nurse_notes_id` int(11) NOT NULL,
  `ip_id` varchar(25) NOT NULL,
  `dDate` date NOT NULL,
  `dDateTime` varchar(50) NOT NULL,
  `focus` varchar(50) NOT NULL,
  `notes` text NOT NULL,
  `cPreparedBy` varchar(25) NOT NULL,
  `InActive` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ip_operation_theater`
--

CREATE TABLE `ip_operation_theater` (
  `operation_id` int(11) NOT NULL,
  `ip_id` varchar(25) NOT NULL,
  `dDate_from` date NOT NULL,
  `dTime_from` time NOT NULL,
  `dDate_to` date NOT NULL,
  `dTime_to` time NOT NULL,
  `operation_name` varchar(250) NOT NULL,
  `bed_id` int(11) NOT NULL,
  `diagnosis` text NOT NULL,
  `name_of_surgeon` varchar(25) NOT NULL,
  `name_of_anesthesia` varchar(25) NOT NULL,
  `assistant_name1` varchar(150) NOT NULL,
  `assistant_name2` varchar(150) NOT NULL,
  `assistant_name3` varchar(150) NOT NULL,
  `assistant_name4` varchar(150) NOT NULL,
  `operation_procedure` text NOT NULL,
  `notes` text NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `InActive` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ip_output_record`
--

CREATE TABLE `ip_output_record` (
  `output_id` int(11) NOT NULL,
  `ip_id` varchar(25) NOT NULL,
  `urine` varchar(25) NOT NULL,
  `feaces` varchar(25) NOT NULL,
  `respitation` varchar(25) NOT NULL,
  `skin` varchar(25) NOT NULL,
  `dDate` date NOT NULL,
  `dDateTime` varchar(50) NOT NULL,
  `cPreparedBy` varchar(25) NOT NULL,
  `InActive` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ip_progress_note`
--

CREATE TABLE `ip_progress_note` (
  `progress_id` int(11) NOT NULL,
  `ip_id` varchar(25) NOT NULL,
  `dDate` date NOT NULL,
  `dDateTime` varchar(50) NOT NULL,
  `progress` text NOT NULL,
  `treatment` text NOT NULL,
  `remarks` text NOT NULL,
  `InActive` int(1) NOT NULL,
  `cPreparedBy` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ip_progress_note`
--

INSERT INTO `ip_progress_note` (`progress_id`, `ip_id`, `dDate`, `dDateTime`, `progress`, `treatment`, `remarks`, `InActive`, `cPreparedBy`) VALUES
(1, 'IP-000024', '2024-04-24', '2017-02-24 asd', 'asd', 'asd', 'asdas', 0, '00007');

-- --------------------------------------------------------

--
-- Table structure for table `ip_receipt`
--

CREATE TABLE `ip_receipt` (
  `receipt_id` int(11) NOT NULL,
  `receipt_no` varchar(15) NOT NULL,
  `invoice_no` varchar(25) NOT NULL,
  `dDate` datetime NOT NULL,
  `ip_id` varchar(25) NOT NULL,
  `patient_no` varchar(25) NOT NULL,
  `payment_type` varchar(50) NOT NULL,
  `discount` float(11,2) NOT NULL,
  `subtotal` float(11,2) NOT NULL,
  `total_amount` float(11,2) NOT NULL,
  `amountPaid` float(11,2) NOT NULL,
  `change` float(11,2) NOT NULL,
  `total_purchased` int(4) NOT NULL,
  `creditCardNo` int(25) NOT NULL,
  `creditCardHolder` varchar(35) NOT NULL,
  `insurance_company` int(11) NOT NULL,
  `remarks` int(11) NOT NULL,
  `InActive` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ip_room_transfer`
--

CREATE TABLE `ip_room_transfer` (
  `transfer_id` int(11) NOT NULL,
  `ip_id` varchar(25) NOT NULL,
  `dDate` date NOT NULL,
  `dDateTime` varchar(50) NOT NULL,
  `room_category_id` int(3) NOT NULL,
  `room_master_id` int(3) NOT NULL,
  `bed_id` int(11) NOT NULL,
  `reason` text NOT NULL,
  `cPreparedBy` varchar(25) NOT NULL,
  `InActive` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `iop_room_transfer`
--

INSERT INTO `ip_room_transfer` (`transfer_id`, `ip_id`, `dDate`, `dDateTime`, `room_category_id`, `room_master_id`, `bed_id`, `reason`, `cPreparedBy`, `InActive`) VALUES
(1, 'IP-000024', '2024-04-24', '2017-02-24 08:36:52 AM', 1, 7, 1, 'Patient Admitted', '00010', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ip_vital_parameters`
--

CREATE TABLE `ip_vital_parameters` (
  `vital_id` int(11) NOT NULL,
  `ip_id` varchar(25) NOT NULL,
  `dDate` date NOT NULL,
  `dDateTime` varchar(50) NOT NULL,
  `pulse_rate` varchar(25) NOT NULL,
  `temperature` varchar(25) NOT NULL,
  `height` varchar(25) NOT NULL,
  `bp` varchar(25) NOT NULL,
  `respiration` varchar(25) NOT NULL,
  `weight` varchar(25) NOT NULL,
  `cPreparedBy` varchar(25) NOT NULL,
  `InActive` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ip_vital_parameters`
--

INSERT INTO `ip_vital_parameters` (`vital_id`, `ip_id`, `dDate`, `dDateTime`, `pulse_rate`, `temperature`, `height`, `bp`, `respiration`, `weight`, `cPreparedBy`, `InActive`) VALUES
(1, 'OP-000017', '2024-02-24', '2017-02-24 07:26:54', '10', '30', '50', '20', '40', '60', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `logfile`
--

CREATE TABLE `logfile` (
  `logid` bigint(11) NOT NULL,
  `user_id` varchar(25) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `event` varchar(10) DEFAULT NULL,
  `ipaddress` varchar(25) DEFAULT NULL,
  `value` text DEFAULT NULL,
  `date_time` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logfile`
--

INSERT INTO `logfile` (`logid`, `user_id`, `module`, `event`, `ipaddress`, `value`, `date_time`) VALUES
(1, '00010', 'Patient Registration', 'INSERT', '127.0.0.1', 'Jenna P santos', '2016-11-01 02:34:43');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_category`
--

CREATE TABLE `medicine_category` (
  `cat_id` int(11) NOT NULL,
  `med_category_name` varchar(500) NOT NULL,
  `med_category_desc` text NOT NULL,
  `InActive` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine_category`
--

INSERT INTO `medicine_category` (`cat_id`, `med_category_name`, `med_category_desc`, `InActive`) VALUES
(1, 'ANTI-ALLERGIC', 'ANTI-ALLERGIC', 0),
(2, 'ANTI-ANXIETY', 'ANTI-ANXIETY', 0),
(4, 'ANTI-ARRHYTHMIA', 'ANTI-ARRHYTHMIA', 0),
(5, 'ANTI-ASTHMATIC', 'ANTI-ASTHMATIC', 0),
(6, 'ANTI-BACTERIAL', 'ANTI-BACTERIAL ', 0),
(7, 'ANTI-CHOLINERGICS', 'ANTI-CHOLINERGICS', 0),
(8, 'ANTI-CHOLINESTERASES', 'ANTI-CHOLINESTERASES', 0),
(9, 'ANTI-HIV', 'ANTI-HIV', 0),
(10, 'ANTI-INFECTIVE', 'ANTI-INFECTIVE', 0),
(11, 'PHARMACY', 'PHARMACY', 0);

-- --------------------------------------------------------

--
-- Table structure for table `medicine_drug_name`
--

CREATE TABLE `medicine_drug_name` (
  `drug_id` int(11) NOT NULL,
  `med_cat_id` int(11) NOT NULL,
  `cType` int(11) NOT NULL,
  `drug_name` varchar(500) NOT NULL,
  `drug_desc` text NOT NULL,
  `uom` int(11) NOT NULL,
  `re_order_level` float(11,2) NOT NULL,
  `nPrice` float(11,2) NOT NULL,
  `nStock` float(11,2) NOT NULL,
  `InActive` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine_drug_name`
--

INSERT INTO `medicine_drug_name` (`drug_id`, `med_cat_id`, `cType`, `drug_name`, `drug_desc`, `uom`, `re_order_level`, `nPrice`, `nStock`, `InActive`) VALUES
(4, 1, 51, 'CYPROHEPTADINE', '', 55, 150.00, 60.00, 1500.00, 0),
(3, 1, 51, 'DIPHENHYDRAMINE', '', 55, 100.00, 25.00, 10000.00, 0),
(5, 1, 51, 'PROMETHAZINE', '', 55, 150.00, 50.00, 1500.00, 0),
(6, 1, 51, 'PHENIRAMINE', '', 55, 150.00, 45.00, 150.00, 0),
(7, 1, 51, 'CHLORPHENIRAMINE', '', 55, 15.00, 15.00, 250.00, 0),
(8, 1, 51, 'PYRILAMINE', '', 55, 150.00, 50.00, 150.00, 0),
(9, 5, 51, 'EPINEPHRINE', '', 55, 150.00, 45.00, 54000.00, 0),
(10, 1, 51, 'NITRIC OXIDE', '', 55, 155.00, 50.00, 2500.00, 0),
(11, 1, 51, 'ATROPINE', '', 55, 500.00, 25.00, 150.00, 0),
(12, 5, 51, 'ISOPROTERENOL', '', 55, 500.00, 50.00, 5000.00, 0),
(13, 11, 52, 'MEDICINE', '', 55, 0.00, 0.00, 0.00, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `page_id` int(11) NOT NULL,
  `page_module` varchar(50) NOT NULL,
  `page_name` varchar(50) NOT NULL,
  `page_link` varchar(50) NOT NULL,
  `InActive` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `page_module`, `page_name`, `page_link`, `InActive`) VALUES
(1, 'System Pages', 'Access to System Pages', 'pages', 0),
(2, 'System Pages', 'Add Page', 'add_page', 0),
(3, 'System Pages', 'Update Page', 'update_page', 0),
(4, 'System Pages', 'Delete Page', 'delete_page', 0),
(35, 'User Roles', 'Delete User Roles', 'delete_roles', 0),
(34, 'User Roles', 'Update User Roles', 'update_roles', 0),
(33, 'User Roles', 'Add User Roles', 'add_roles', 0),
(32, 'User Roles', 'Access to User Roles', 'roles', 0),
(28, 'Department', 'Access to Department', 'department', 0),
(29, 'Department', 'Add Department', 'add_department', 0),
(30, 'Department', 'Update Department', 'update_department', 0),
(31, 'Department', 'Delete Department', 'delete_department', 0),
(36, 'System User', 'Access to System User', 'view_user', 0),
(37, 'System User', 'Add User', 'add_user', 0),
(38, 'System User', 'Update User', 'update_user', 0),
(39, 'System User', 'Delete User', 'delete_user', 0),
(40, 'Designation', 'Access to Designation', 'designation', 0),
(41, 'Designation', 'Add Designation', 'add_designation', 0),
(42, 'Designation', 'Update Designation', 'update_designation', 0),
(43, 'Designation', 'Delete Designation', 'delete_designation', 0),
(44, 'Room Management', 'Access to Room Management', 'room_management', 0),
(45, 'Room Management', 'Add Room Management', 'add_room_management', 0),
(46, 'Room Management', 'Update Room Management', 'update_room_management', 0),
(47, 'Room Management', 'Delete Room Management', 'delete_room_management', 0),
(48, 'Patient Management', 'Add New Patient', 'add_new_patient', 0),
(49, 'Patient Management', 'Access to Patient Master', 'patient_master', 0),
(50, 'Patient Management', 'Patient Demographic', 'patient_demographic', 0),
(51, 'Patient Management', 'Modify Patient Information', 'modiffy_patient', 0),
(52, 'System Parameters', 'Access to System Parameters', 'parameters', 0),
(53, 'System Parameters', 'Add Parameters', 'add_sys_param', 0),
(54, 'System Parameters', 'Update Parameters', 'update_sys_param', 0),
(55, 'System Parameters', 'Delete Parameters', 'delete_sys_param', 0),
(56, 'Bill Group Name', 'Access to Bill Group Name', 'group_name', 0),
(57, 'Bill Group Name', 'Add Group Name', 'add_group_name', 0),
(58, 'Bill Group Name', 'Update Group Name', 'update_group_name', 0),
(59, 'Bill Group Name', 'Delete Group Name', 'delete_group_name', 0),
(60, 'Particular Bill', 'Access to Particular Bill', 'particular_bill', 0),
(61, 'Particular Bill', 'Add Particular Bill', 'add_particular_bill', 0),
(62, 'Particular Bill', 'Update Particular Bill', 'update_particular_bill', 0),
(63, 'Particular Bill', 'Delete Particular Bill', 'delete_particular_bill', 0),
(64, 'Diagnosis Master', 'Access to Diagnosis Master', 'diagnosis', 0),
(65, 'Diagnosis Master', 'Add Diagnosis Master', 'add_diagnosis', 0),
(66, 'Diagnosis Master', 'Update Diagnosis Master', 'update_diagnosis', 0),
(67, 'Diagnosis Master', 'Delete Diagnosis Master', 'delete_diagnosis', 0),
(68, 'Insurance Company', 'Access to Insurance Company', 'insurance_company', 0),
(69, 'Insurance Company', 'Add Insurance Company', 'add_insurance_company', 0),
(70, 'Insurance Company', 'Update Insurance Company', 'update_insurance_company', 0),
(71, 'Insurance Company', 'Delete Insurance Company', 'delete_insurance_company', 0),
(72, 'Complain Module', 'Access to Complain Module', 'complain', 0),
(73, 'Complain Module', 'Add Complain Module', 'add_complain', 0),
(74, 'Complain Module', 'Update Complain', 'update_complain', 0),
(75, 'Complain Module', 'Delete Complain', 'delete_complain', 0),
(76, 'Medicine Category', 'Access to Medicine Category', 'medicine_category', 0),
(77, 'Medicine Category', 'Add Medicine Category', 'add_medicine_category', 0),
(78, 'Medicine Category', 'Update Medicine Category', 'update_medical_category', 0),
(79, 'Medicine Category', 'Delete Medicine Category', 'delete_medical_category', 0),
(80, 'Drug Name Master', 'Access to Drug Name Master', 'drug_name', 0),
(81, 'Drug Name Master', 'Add Drug Name Master', 'add_drug_name', 0),
(82, 'Drug Name Master', 'Update Drug Name Master', 'update_drug_name', 0),
(83, 'Drug Name Master', 'Delete Drug Name Master', 'delete_drug_name', 0),
(84, 'Billing Module', 'Access to POS', 'pos', 0),
(85, 'Billing Module', 'Access to Billing List', 'billing_history', 0),
(86, 'OR History', 'Access to OR History', 'OR_history', 0),
(87, 'Reports', 'Daily Sales Reports', 'daily_reports', 0),
(88, 'Reports', 'Patient List Report', 'patient_list_report', 0),
(89, 'Doctor Module', 'OPD', 'doctor_opd', 0),
(90, 'Doctor Module', 'IPD', 'ipd_doctor', 0),
(91, 'Patient Management', 'OPD Registration', 'opd_registration', 0),
(92, 'Patient Management', 'OPD Enquiry', 'opd_enquiry', 0),
(93, 'Patient Management', 'IPD Registration', 'ipd_registration', 0),
(94, 'Patient Management', 'IPD Enquiry', 'ipd_enquiry', 0),
(95, 'EMR Sheet', 'OPD EMR', 'opd_emr', 0),
(96, 'EMR Sheet', 'IPD EMR', 'ipd_emr', 0),
(97, 'OPD Reports', 'Patient Diagnosis Reports', 'opd_diagnosis_reports', 0),
(98, 'Reports', 'Individual Patient  Reports', 'patient_visited_report', 0),
(99, 'Room Management', 'Room Enquiry', 'room_enquiry', 0),
(100, 'Nurse Module', 'Patient Medication', 'nurse_medication_reports', 0),
(101, 'Nurse Module', 'Intake/Output Record', 'nurse_intake_output_reports', 0),
(102, 'Nurse Module', 'Nurse Progress Note', 'nurse_progress_note_report', 0),
(103, 'Nurse Module', 'Patient Vital Sign', 'nurse_vital_sign_report', 0),
(104, 'Nurse Module', 'IP Room Transfer', 'nurse_room_transfer_report', 0),
(105, 'Nurse Module', 'Patient History', 'nurse_patientHistory_report', 0),
(106, 'Nurse Module', 'Patient Discharge Summary', 'nurse_discharge_summary_report', 0),
(107, 'Nurse Module', 'Bed Side Procedure', 'nurse_bed_side_procedure_report', 0),
(108, 'Reports', 'Out Patient Reports', 'outpatient_report', 0),
(109, 'Reports', 'Admitted Patient Reports', 'inpatient_report', 0),
(110, 'Reports', 'Discharged Patient', 'discharged_patient_report', 0),
(111, 'Company Information', 'Company Information', 'company_information', 0),
(112, 'Surgical Package', 'Access to Surgical Package', 'surgical_package', 0),
(113, 'Surgical Package', 'Add Surgical Package', 'add_surgical_package', 0),
(114, 'Surgical Package', 'Update Surgical Package', 'update_surgical_package', 0),
(115, 'Surgical Package', 'Delete Surgical Package', 'delete_surgical_package', 0),
(116, 'Billing Module', 'Surgical Quotation Costing', 'surgical_costing', 0),
(117, 'Acknowledge Receipt', 'Access to Acknowledge Receipt', 'declared_receipt', 0),
(118, 'Acknowledge Receipt', 'Delete  Acknowledge Receipt', 'delete_delaredOR', 0),
(119, 'Reports', 'Acknowledge Receipt Reports', 'declared_receipt_report', 0),
(120, 'Nurse Module', 'Nurse Diagnosis', 'nurse_diagnosis_reports', 0),
(121, 'Patient Appointment', 'Access to Appointment', 'appointment', 0),
(122, 'Patient Appointment', 'Add Appointment', 'add_appointment', 0),
(123, 'Patient Appointment', 'Edit Appointment', 'edit_appointment', 0),
(124, 'Patient Appointment', 'Delete Appointment', 'delete_appointment', 0),
(126, 'Patient Appointment', 'Check IN Patient', 'checkIN_appointment', 0),
(127, 'Backup Database', 'Create Backup of System Database', 'backup_database', 0),
(128, 'Nurse Module', 'Access to Nurse Module', 'access_nurse_module', 0),
(129, 'Doctor Module', 'Access to Doctor Module', 'access_doctor_module', 0),
(130, 'EMR Sheet', 'Access to EMR', 'access_emr_module', 0),
(131, 'Administration Module Tab', 'Access to Administration Module', 'access_administration_module', 0),
(132, 'Reports Generation Module Tab', 'Access to Reports Module', 'access_reports_module', 0),
(133, 'Reports', 'Doctors Fee Report', 'doctor_fee_report', 0),
(134, 'Dashboard', 'Access to Doctors Availability', 'access_doctors_avail', 0);

-- --------------------------------------------------------

--
-- Table structure for table `price_history`
--

CREATE TABLE `price_history` (
  `price_history_id` int(11) NOT NULL,
  `nRef_ID` int(11) NOT NULL,
  `price` float(11,2) NOT NULL,
  `updatedBy` varchar(11) NOT NULL,
  `dDate` datetime NOT NULL,
  `action` varchar(25) NOT NULL,
  `InActive` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `price_history`
--

INSERT INTO `price_history` (`price_history_id`, `nRef_ID`, `price`, `updatedBy`, `dDate`, `action`, `InActive`) VALUES
(28, 38, 800.00, '00001', '2021-07-03 02:18:12', '', 0),
(27, 37, 200.00, '00001', '2023-07-03 02:17:59', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `room_beds`
--

CREATE TABLE `room_beds` (
  `room_bed_id` int(11) NOT NULL,
  `room_master_id` int(11) NOT NULL,
  `bed_name` varchar(25) NOT NULL,
  `nStatus` varchar(15) NOT NULL,
  `patient_no` varchar(25) NOT NULL,
  `InActive` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_beds`
--

INSERT INTO `room_beds` (`room_bed_id`, `room_master_id`, `bed_name`, `nStatus`, `patient_no`, `InActive`) VALUES
(1, 7, 'RM-101-1', 'Vacant', '', 0),
(2, 7, 'RM-101-2', 'Vacant', '', 0),
(3, 7, 'RM-101-3', 'Vacant', '', 0),
(4, 7, 'RM-101-4', 'Vacant', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `room_category`
--

CREATE TABLE `room_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `category_desc` text NOT NULL,
  `InActive` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_category`
--

INSERT INTO `room_category` (`category_id`, `category_name`, `category_desc`, `InActive`) VALUES
(1, 'General Ward', 'General Ward', 0),
(2, 'ICU', 'ICU', 0),
(3, 'Emergency Ward/ Day Care', 'Emergency Ward/ Day Care', 0),
(4, 'Operation Theater', 'For Surgery/Operation', 0);

-- --------------------------------------------------------
--
-- Table structure for table `surgical_package`
--

CREATE TABLE `surgical_package` (
  `surgery_id` int(11) NOT NULL,
  `surgery_name` varchar(150) NOT NULL,
  `surgery_desc` text NOT NULL,
  `total_costs` float(11,2) NOT NULL,
  `InActive` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `surgical_package`
--

INSERT INTO `surgical_package` (`surgery_id`, `surgery_name`, `surgery_desc`, `total_costs`, `InActive`) VALUES
(3, 'Flexible Cystoscopy', 'Flexible Cystoscopy', 9100.00, 0);

-- --------------------------------------------------------

--
-- Table structure for table `surgical_package_totals`
--

CREATE TABLE `surgical_package_totals` (
  `m_id` int(11) NOT NULL,
  `surgery_id` int(11) NOT NULL,
  `surgery_item` varchar(150) NOT NULL,
  `cDesc` text NOT NULL,
  `costs` float(11,2) NOT NULL,
  `InActive` int(1) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `surgical_package_t`
--

INSERT INTO `surgical_package_t` (`m_id`, `surgery_id`, `surgery_item`, `cDesc`, `costs`, `InActive`, `date_created`) VALUES
(14, 3, '97', 'scar', 6000.00, 0, '2014-07-30 05:56:29'),
(13, 3, '76', 'Intra Articular Injections', 500.00, 0, '2014-07-30 05:56:12');
-- --------------------------------------------------------

--
-- Table structure for table `system_option`
--

CREATE TABLE `system_option` (
  `option_id` int(11) NOT NULL,
  `cCode` varchar(25) NOT NULL,
  `cValue` int(11) NOT NULL,
  `InActive` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `system_option`
--

INSERT INTO `system_option` (`option_id`, `cCode`, `cValue`, `InActive`) VALUES
(1, 'employee_no', 13, 0),
(2, 'patient_no', 39, 0),
(3, 'INPATIENTNO', 24, 0),
(4, 'OUTPATIENTNO', 18, 0),
(5, 'invoice_no', 40, 0),
(6, 'receipt_no', 19, 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_parameters`
--

CREATE TABLE `system_parameters` (
  `param_id` bigint(11) NOT NULL,
  `cCode` varchar(50) NOT NULL,
  `cValue` varchar(50) NOT NULL,
  `cDesc` varchar(150) NOT NULL,
  `InActive` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `system_parameters`
--

INSERT INTO `system_parameters` (`param_id`, `cCode`, `cValue`, `cDesc`, `InActive`) VALUES
(1, 'gender', 'Male', '', 0),
(2, 'gender', 'Female', '', 0),
(3, 'civil_status', 'Single', '', 0),
(4, 'civil_status', 'Married', '', 0),
(5, 'civil_status', 'Legal Seperated', '', 0),
(6, 'civil_status', 'Divorced', '', 0),
(7, 'title_name', 'Mr.', '', 0),
(8, 'title_name', 'Ms.', '', 0),
(9, 'title_name', 'Mrs.', '', 0),
(10, 'title_name', 'Dr.', '', 0),
(11, 'religion', 'Roman Catholic', '', 0),
(12, 'religion', 'Muslim', '', 0),
(13, 'religion', 'Iglesia ni Cristo', '', 0),
(14, 'religion', 'Church of God', '', 0),
(15, 'religion', 'Evangelical', '', 0),
(16, 'religion', 'Born Again', '', 0),
(17, 'religion', 'Evangelical', '', 0),
(18, 'religion', 'El Shaddai', '', 0),
(19, 'religion', 'Church of the Nazarene', '', 0),
(20, 'religion', 'Seventh-Day Adventists', '', 0),
(21, 'religion', 'Chinese', '', 0),
(22, 'religion', 'Hindu', '', 0),
(23, 'religion', 'Judaism', '', 0),
(24, 'religion', 'Ang Dating Daan', '', 0),
(25, 'religion', 'Jehovahs Witnesses', '', 0),
(26, 'religion', 'Unitarian', '', 0),
(27, 'religion', 'Assemblies of God (Ilocos Norte)', '', 0),
(28, 'religion', 'Aglipayan ', '', 0),
(29, 'blood_type', 'O+', '', 0),
(30, 'blood_type', 'O-', '', 0),
(31, 'blood_type', 'A+', '', 0),
(32, 'blood_type', 'A-', '', 0),
(33, 'blood_type', 'B+', '', 0),
(34, 'blood_type', 'B-', '', 0),
(35, 'blood_type', 'AB+', '', 0),
(36, 'blood_type', 'AB-', '', 0),
(37, 'title_name', 'Dra.', 'Doctora', 0),
(45, 'gender', 'asd', '', 1),
(44, 'gender', 'x2', 'xxx2', 1),
(51, 'type_medicine', 'Generic', 'Generic', 0),
(52, 'type_medicine', 'Branded', 'Branded', 0),
(53, 'medicine_uom', 'Tablet', 'Tablet', 0),
(54, 'medicine_uom', 'Bottle', 'Bottle', 0),
(55, 'medicine_uom', 'Each', 'Each', 0),
(56, 'payment_type', 'CASH', 'CASH', 0),
(57, 'payment_type', 'CREDIT CARD', 'CREDIT CARD', 0),
(58, 'payment_type', 'INSURANCE COMPANY', 'INSURANCE COMPANY', 0),
(60, 'condition_upon_discharge', 'Improved', 'Improved', 0),
(61, 'condition_upon_discharge', 'Recovered', 'Recovered', 0),
(62, 'condition_upon_discharge', 'Expired', '', 0),
(63, 'condition_upon_discharge', 'Transferred', '', 0),
(64, 'reason_for_discount', 'Student', 'Student', 0),
(65, 'reason_for_discount', 'Senior Citizen', 'Senior Citizen', 0),
(66, 'reason_for_discount', 'Sample Reason here', 'Sample Reason here', 0),
(67, 'reason_for_discount', 'Person with Disablities', 'Person with Disablities', 0),
(68, 'reason_for_discount', 'Management Decision', 'Management Decision', 0),
(69, 'reason_for_discount', 'Below Poverty Line', 'Below Poverty Line', 0),
(70, 'reason_for_discount', 'Employee', 'Employee', 0),
(71, 'reason_for_discount', 'Member', 'Member', 0);

-- --------------------------------------------------------

--

-- Table structure for table `staff_roles_pages`
--

CREATE TABLE `staff_roles_pages` (
  `rollpages_id` bigint(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_roles_pages`
--

INSERT INTO `staff_roles_pages` (`rollpages_id`, `role_id`, `page_id`) VALUES
(9259, 1, 34),
(9258, 1, 35);
--
-- Indexes for dumped tables
--

-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_roles`
--
ALTER TABLE `staff_roles`
  ADD PRIMARY KEY (`role_id`);
--
-- Indexes for table `patient_details_ip`
--
ALTER TABLE `patient_details_ip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_personal_info`
--
ALTER TABLE `patient_personal_info`
  ADD PRIMARY KEY (`reg_no`);

--

-- Indexes for table `patient_appointment`
--
ALTER TABLE `patient_appointment`
  ADD PRIMARY KEY (`appID`);

--
-- Indexes for table `patient_attachment`
--
ALTER TABLE `patient_attachment`
  ADD PRIMARY KEY (`attach_id`);

--
-- Indexes for table `bill_group_name`
--
ALTER TABLE `bill_group_name`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `bill_particular`
--
ALTER TABLE `bill_particular`
  ADD PRIMARY KEY (`particular_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `complain`
--
ALTER TABLE `complain`
  ADD PRIMARY KEY (`complain_id`);

--
-- Indexes for table `declared`
--
ALTER TABLE `declared`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`designation_id`);

--
-- Indexes for table `diagnosis`
--
ALTER TABLE `diagnosis`
  ADD PRIMARY KEY (`diagnosis_id`);

--
-- Indexes for table `doctors_fee`
--
ALTER TABLE `doctors_fee`
  ADD PRIMARY KEY (`doctorfeeID`);

--
-- Indexes for table `floor`
--
ALTER TABLE `floor`
  ADD PRIMARY KEY (`floor_id`);

--
-- Indexes for table `insurance_comp`
--
ALTER TABLE `insurance_comp`
  ADD PRIMARY KEY (`in_com_id`);

--
-- Indexes for table `ip_bed_side_procedure`
--
ALTER TABLE `ip_bed_side_procedure`
  ADD PRIMARY KEY (`bed_pro_id`);

--
-- Indexes for table `ip_billing`
--
ALTER TABLE `ip_billing`
  ADD PRIMARY KEY (`bill_id`);

--
-- Indexes for table `ip_billing_totals`
--
ALTER TABLE `ip_billing_totals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ip_complaints`
--
ALTER TABLE `ip_complaints`
  ADD PRIMARY KEY (`iop_comp_id`);

--
-- Indexes for table `ip_diagnosis`
--
ALTER TABLE `ip_diagnosis`
  ADD PRIMARY KEY (`iop_diag_id`);

--
-- Indexes for table `ip_discharge_summary`
--
ALTER TABLE `ip_discharge_summary`
  ADD PRIMARY KEY (`dis_id`);

--
-- Indexes for table `ip_intake_record`
--
ALTER TABLE `ip_intake_record`
  ADD PRIMARY KEY (`intake_id`);

--
-- Indexes for table `iop_laboratory`
--
ALTER TABLE `ip_laboratory`
  ADD PRIMARY KEY (`io_lab_id`);

--
-- Indexes for table `ip_medication`
--
ALTER TABLE `ip_medication`
  ADD PRIMARY KEY (`iop_med_id`);

--
-- Indexes for table `ip_nurse_notes`
--
ALTER TABLE `ip_nurse_notes`
  ADD PRIMARY KEY (`nurse_notes_id`);

--
-- Indexes for table `ip_operation_theater`
--
ALTER TABLE `ip_operation_theater`
  ADD PRIMARY KEY (`operation_id`);

--
-- Indexes for table `ip_output_record`
--
ALTER TABLE `ip_output_record`
  ADD PRIMARY KEY (`output_id`);

--
-- Indexes for table `ip_progress_note`
--
ALTER TABLE `ip_progress_note`
  ADD PRIMARY KEY (`progress_id`);

--
-- Indexes for table `ip_receipt`
--
ALTER TABLE `ip_receipt`
  ADD PRIMARY KEY (`receipt_id`);

--
-- Indexes for table `ip_room_transfer`
--
ALTER TABLE `ip_room_transfer`
  ADD PRIMARY KEY (`transfer_id`);

--
-- Indexes for table `ip_vital_parameters`
--
ALTER TABLE `ip_vital_parameters`
  ADD PRIMARY KEY (`vital_id`);

--
-- Indexes for table `logfile`
--
ALTER TABLE `logfile`
  ADD PRIMARY KEY (`logid`);

--
-- Indexes for table `medicine_category`
--
ALTER TABLE `medicine_category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `medicine_drug_name`
--
ALTER TABLE `medicine_drug_name`
  ADD PRIMARY KEY (`drug_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`);

-- Indexes for table `price_history`
--
ALTER TABLE `price_history`
  ADD PRIMARY KEY (`price_history_id`);

--
-- Indexes for table `room_beds`
--
ALTER TABLE `room_beds`
  ADD PRIMARY KEY (`room_bed_id`);

--
-- Indexes for table `room_category`
--
ALTER TABLE `room_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `surgical_package`
--
ALTER TABLE `surgical_package`
  ADD PRIMARY KEY (`surgery_id`);

--
-- Indexes for table `surgical_package_t`
--
ALTER TABLE `surgical_package_totals`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `system_option`
--
ALTER TABLE `system_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `system_parameters`
--
ALTER TABLE `system_parameters`
  ADD PRIMARY KEY (`param_id`);

--
-- Indexes for table `staff_roles_pages`
--
ALTER TABLE `staff_roles_pages`
  ADD PRIMARY KEY (`rollpages_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill_group_name`

-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT table `staff_roles`
--
ALTER TABLE `staff_roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT table `user_roles_pages`
--
ALTER TABLE `staff_roles_pages`
  MODIFY `rollpages_id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9260;
--
-- AUTO_INCREMENT for table `patient_details_iop`
--
ALTER TABLE `patient_details_iop`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `patient_personal_info`
--
ALTER TABLE `patient_personal_info`
  MODIFY `reg_no` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


-- AUTO_INCREMENT for table `patient_appointment`
--
ALTER TABLE `patient_appointment`
  MODIFY `appID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patient_attachment`
--
ALTER TABLE `patient_attachment`
  MODIFY `attach_id` int(11) NOT NULL AUTO_INCREMENT;

--
ALTER TABLE `bill_group_name`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `bill_particular`
--
ALTER TABLE `bill_particular`
  MODIFY `particular_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `complain`
--
ALTER TABLE `complain`
  MODIFY `complain_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `declared`
--
ALTER TABLE `declared`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `designation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `diagnosis`
--
ALTER TABLE `diagnosis`
  MODIFY `diagnosis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `doctors_fee`
--
ALTER TABLE `doctors_fee`
  MODIFY `doctorfeeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `floor`
--
ALTER TABLE `floor`
  MODIFY `floor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `insurance_comp`
--
ALTER TABLE `insurance_comp`
  MODIFY `in_com_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ip_bed_side_procedure`
--
ALTER TABLE `ip_bed_side_procedure`
  MODIFY `bed_pro_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_billing`
--
ALTER TABLE `ip_billing`
  MODIFY `bill_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_billing_totals`
--
ALTER TABLE `ip_billing_totals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_complaints`
--
ALTER TABLE `ip_complaints`
  MODIFY `ip_comp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ip_diagnosis`
--
ALTER TABLE `ip_diagnosis`
  MODIFY `iop_diag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ip_discharge_summary`
--
ALTER TABLE `ip_discharge_summary`
  MODIFY `dis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ip_intake_record`
--
ALTER TABLE `ip_intake_record`
  MODIFY `intake_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_laboratory`
--
ALTER TABLE `ip_laboratory`
  MODIFY `io_lab_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ip_medication`
--
ALTER TABLE `ip_medication`
  MODIFY `iop_med_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `iop_nurse_notes`
--
ALTER TABLE `iop_nurse_notes`
  MODIFY `nurse_notes_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_operation_theater`
--
ALTER TABLE `ip_operation_theater`
  MODIFY `operation_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `iop_output_record`
--
ALTER TABLE `ip_output_record`
  MODIFY `output_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_progress_note`
--
ALTER TABLE `ip_progress_note`
  MODIFY `progress_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ip_receipt`
--
ALTER TABLE `ip_receipt`
  MODIFY `receipt_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_room_transfer`
--
ALTER TABLE `ip_room_transfer`
  MODIFY `transfer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ip_vital_parameters`
--
ALTER TABLE `ip_vital_parameters`
  MODIFY `vital_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `logfile`
--
ALTER TABLE `logfile`
  MODIFY `logid` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `medicine_category`
--
ALTER TABLE `medicine_category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `medicine_drug_name`
--
ALTER TABLE `medicine_drug_name`
  MODIFY `drug_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `price_history`
--
ALTER TABLE `price_history`
  MODIFY `price_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `room_beds`
--
ALTER TABLE `room_beds`
  MODIFY `room_bed_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=331;

--
-- AUTO_INCREMENT for table `room_category`
--
ALTER TABLE `room_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `surgical_package`
--
ALTER TABLE `surgical_package`
  MODIFY `surgery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `surgical_package_t`
--
ALTER TABLE `surgical_package_t`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `system_option`
--
ALTER TABLE `system_option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `system_parameters`
--
ALTER TABLE `system_parameters`
  MODIFY `param_id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
COMMIT;
