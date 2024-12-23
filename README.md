# Extracting IC Loading coefficients from NIfTI Data in gICA output based on GIFT software

This repository contains a MATLAB script designed to process and extract data from a NIfTI file containing subjects' IC loading coefficients. The script reshapes the data and saves the output in both `.mat` and `.csv` formats for further analysis.

## Overview
The provided script performs the following tasks:
1. Reads a NIfTI file containing all IC loadings for each subject.
2. Extracts the data and reshapes it into a 2D matrix format.
3. Saves the reshaped data in `.mat` and `.csv` formats.

This script is particularly useful for neuroimaging researchers and analysts working with independent component analysis (ICA) data.

---

## Prerequisites
Ensure you have the following before running the script:

### Software
- MATLAB (R2019b or later is recommended)

### File Requirements
- A valid NIfTI file with ICA subject loadings (e.g., `**_ica_subject_loadings.nii`).

---

## Script Details

### Functionality
1. **Input**: The script processes a NIfTI file containing subject IC loading data.
   - Expected input dimensions: `[188, 1, 20]`.
2. **Output**: Generates the following:
   - A `.mat` file containing the reshaped data.
   - A `.csv` file for easy import into statistical tools like R, Python, or Excel.

### Steps Performed
1. **File Information Extraction**:
   - Reads NIfTI metadata using `niftiinfo`.
   - Displays file dimensions and metadata.
2. **Data Extraction and Reshaping**:
   - Reads NIfTI image data using `niftiread`.
   - Reshapes the data into a matrix of dimensions `[188, 20]`.
3. **Data Export**:
   - Saves reshaped data to `**_ica_subject_loadings.mat`.
   - Writes reshaped data to `**_ica_subject_loadings.csv` using `dlmwrite`.

---

## Usage
1. Place the script in the same directory as the NIfTI file.
2. Update the file path in the script:
   ```matlab
   niiFilePath = '**_ica_subject_loadings.nii';
   ```
3. Run the script in MATLAB.
4. The processed files will be saved in the same directory.

### Output Files
- **`.mat` File**: Stores reshaped data for use in MATLAB.
- **`.csv` File**: Stores reshaped data for external analysis.

---

## Example Output
### Reshaped Data Size
The reshaped data matrix will have the following dimensions:
- **Rows**: 188 (e.g., number of subjects)
- **Columns**: 20 (e.g., number of components)

### File Locations
- Output `.mat` file: `**_ica_subject_loadings.mat`
- Output `.csv` file: `**_ica_subject_loadings.csv`

---

## Notes
- Replace `**` in file paths with the appropriate prefix for your files.
- Ensure the NIfTI file follows the expected format for correct processing.

---

## License
This script is provided under the MIT License. Feel free to modify and distribute it as needed.

---

## Contact
For questions or issues, please raise an issue in this repository or contact the author (email: huanhuang1988@gmail.com) directly.

