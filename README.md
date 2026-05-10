### Requirements
- **Hashcat v7.1.2 or newer** – for performing AES-256 brute-force attacks.
- **XMRig v6.26.0 or newer** – for Monero mining.
- **GPU drivers with OpenCL or CUDA support** (required for Hashcat to utilize your GPU):
  - **NVIDIA**: Latest drivers + CUDA Toolkit
  - **AMD**: Radeon Software with OpenCL runtime

### Important Notes
This setup runs in two nodes simultaneously:

- While Hashcat searches for the decryption key, your CPU also mines Monero in the background, contributing directly to the prize pool.
- Once the correct decryption key is found, it will be automatically saved. You will then need to manually use it to decrypt the Bitcoin private key.
- All Monero mined during the process is automatically converted and added to the Bitcoin prize pool once it reaches a **$20 threshold**.
- Every time **two thresholds** are reached (i.e., every additional $40), a shorter and more optimized wordlist will be provided. Each new wordlist will be reduced by approximately **15%**.


Good luck on the hunt, hope y'all have fun! Kilum out. (DM me if you have any questions)
