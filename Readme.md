

# PROJECT: AI CRIME SCENE RECONSTRUCTOR 

### 1. Project Overview

The **AI Crime Scene Reconstructor** is a professional-grade forensic tool designed to ingest multimodal evidence (Images and Audio). It performs deep-bitstream analysis to determine the authenticity of files and reconstruct the likelihood of a kinetic event (e.g., a crime scene). The system uses Bayesian Fusion to combine metadata analysis, acoustic impulse detection, and visual integrity checks into a single "Authenticity Probability."

### 2. Core Mission

* **Verification:** To detect if evidence has been tampered with via software like Photoshop.
* **Reconstruction:** To identify high-energy events (gunshots, impacts) within audio files.
* **Authenticity:** To provide a mathematical basis (Percentage) for why a piece of evidence is considered real or suspect.

---

### 3. Tech Stack

| Component | Technology |
| --- | --- |
| **Backend** | Python (FastAPI) |
| **Forensics** | Librosa (Audio), Pillow (EXIF/Image) |
| **Frontend** | HTML5, Tailwind CSS, JavaScript |
| **Visualization** | Three.js (3D), Chart.js (Radar Analytics) |
| **Reporting** | FPDF (Automated Forensic PDF Generation) |
| **Server** | Uvicorn |

---

### 4. System Operations & Logic

The system evaluates files based on the following **Weighted Forensic Bases**:

* **Metadata Extraction:** Scans for Camera Serial Numbers, GPS, and "Software" tags. Finding "Adobe Photoshop" tags results in an immediate authenticity penalty.
* **Acoustic Impulse Analysis:** Scans `.wav` and `.mp3` files for "peaks." High-energy transients with specific rise-times are flagged as kinetic impacts.
* **Spectrogram Generation:** Creates a visual frequency map of audio to detect "Frequency Cutoffs" that indicate splicing.
* **Bayesian Fusion:** Combines all findings to generate the **Authenticity Probability**.
* **3D Spatial Tracking:** Uses a wireframe engine to visualize data entropy.

---

### 5. Pages & UI Components

* **Forensic Command Center (Main):**
* **Evidence Ingestion Zone:** Drag-and-drop area for raw data.
* **Logic Terminal:** A live-stream of the AI's "thought process" as it evaluates files.
* **3D Photogrammetry View:** A dynamic 3D viewport that changes color (Green=Safe, Red=Suspect) based on the analysis.
* **Confidence Matrix:** A Radar Chart visualizing Metadata, Temporal Sync, and Acoustic strength.


* **Audit Report (PDF):**
* A downloadable, legally formatted document containing the "Verdict" and the specific reasons for suspicion.



---

### 6. Project Setup & Run Commands

#### Prerequisites

Ensure you have Python 3.8+ installed and a folder named `vault` and `reports` in your directory.

#### Step 1: Install Dependencies

Run the following command in your terminal:

```bash
pip install fastapi uvicorn pillow librosa numpy matplotlib fpdf python-multipart

```

#### Step 2: Directory Structure

Ensure your files are organized as follows:

```text
/project_root
│── main.py            # FastAPI Logic & Forensic Engine
│── index.html         # Frontend Template
│── /vault             # Storage for uploaded evidence
└── /reports           # Storage for generated PDF audits

```

#### Step 3: Run the Project

Start the server using Uvicorn:

```bash
python main.py

```

*Alternatively:*

```bash
uvicorn main:app --reload --port 8000

```

#### Step 4: Access the UI

Open your web browser and navigate to:
**`http://127.0.0.1:8000`**

---

### 7. Forensic Probability Breakdown (The "Why")

| Score Shift | Reason |
| --- | --- |
| **+20%** | Original Camera Metadata (No Editing Software detected) |
| **+30%** | Audio peaks match physical impact rise-time signatures |
| **-40%** | "Software" metadata tag found (Photoshop/Canva) |
| **-25%** | Double JPEG compression detected (File was re-saved) |

---

**Author:** Forensic AI Command
**Version:** 9.3 Pro
**Classification:** Confidential / Forensic Audit Tool

Would you like me to create a separate "User Manual" specifically for the investigators using this tool?