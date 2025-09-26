# Smart Event Management – Salesforce Capstone Project

## 📌 Project Overview

The **Smart Event Management** app is a Salesforce-based solution that helps organizations manage events, participants, and registrations efficiently.
It combines both **Admin** and **Developer** features of Salesforce to demonstrate a complete end-to-end implementation.

---

## 🚀 Features Implemented

### **Phase 2: Org Setup & Configuration**

* Configured company profile, fiscal year, and business hours.
* Created **profiles and roles** for Event Organizers, Participants, and Managers.
* Set up a secure data model with proper OWD (Org-Wide Defaults).

### **Phase 3: Data Modeling & Relationships**

* **Custom Objects:** Event, Participant, Registration.
* Relationships:

  * Registration → Event (Master-Detail).
  * Registration → Participant (Lookup).
* Designed record types, page layouts, and schema builder visualization.

### **Phase 4: Process Automation**

* **Validation Rules** to prevent invalid data.
* **Flows** to handle participant self-service registration.
* **Email Alerts** to confirm registrations.
* **Approval Process** for special cases.

### **Phase 5: Apex Programming**

* **Registration Trigger** to prevent duplicate registrations.
* **Apex Service Classes** for reusable logic.
* **Test Classes** to validate code coverage.
* Implemented SOQL, collections, and exception handling.

### **Phase 6: User Interface Development**

* Built a custom **Lightning App** for Event Management.
* Created record pages for Events, Registrations, and Participants.
* Developed Lightning Web Components (LWCs) to display events dynamically.

### **Phase 7: Integration & External Access**

* Configured a **Named Credential** and Apex **Callout class** for demo integration.
* Setup for external API connectivity (future scope: ticketing, payments).

### **Phase 8: Data Management & Deployment**

* Imported Event and Participant data using **CSV files**.
* Deployed metadata via **VS Code + Salesforce CLI**.
* Version control managed with **GitHub**.

### **Phase 9: Reporting & Security Review**

* Created **Manager Dashboard** with:

  * Bar Chart: Registrations per Event.
  * Pie Chart: Registrations by Status.
  * Metric: Total Registrations.
* Enabled **Dynamic Dashboard** for role-based visibility.
* Security enhancements:

  * Events = Public Read Only.
  * Registrations = Private.
  * Participants = Controlled by Parent.
* Configured Field Level Security, Session Settings, IP Ranges, and reviewed Audit Trail.

---

## 🎥 Demo

A final demo video (<10 minutes) walks through:

* Event creation
* Participant registration
* Automation with flows and triggers
* Dashboards & security

---

## 🛠️ Tech Stack

* **Platform:** Salesforce CRM
* **Admin Tools:** Object Manager, Flows, Validation Rules, Reports & Dashboards
* **Developer Tools:** Apex, Triggers, SOQL/SOSL, LWC, Salesforce CLI (SFDX)
* **Deployment:** VS Code + GitHub

---

## 📈 Outcomes

* Complete Salesforce app combining **Admin + Developer** capabilities.
* Automated registration process with duplicate prevention and email alerts.
* Manager-friendly dashboards for KPIs.
* Secure access model ensuring data protection.
