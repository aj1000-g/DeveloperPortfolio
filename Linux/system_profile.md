# Linux System Profile & Hardware Specifications

**Student:** Aman Jha  
**Roll Number:** 2601730058  
**University:** K.R. Mangalam University  
**Batch:** 2026–2030  

---

## System Specifications

| Component | Specification |
| :--- | :--- |
| CPU Model Name | 13th Gen Intel(R) Core(TM) i3-1315U |
| CPU Cores | 8 logical CPUs (4 physical cores, 2 threads per core) |
| Total RAM | 3.7Gi |
| Available RAM | 3.2Gi |
| Primary Storage Size | 1T (/dev/sdd mounted on /) |
| Primary Storage Type | HDD (ROTA=1) |
| Operating System | Ubuntu 26.04.1 LTS |
| Kernel Version | Linux AmanJhaDAV 6.18.58.1-microsoft-standard-WSL2 #1 SMP PREEMPT_DYNAMIC Tue Oct 27 00:24:11 UTC 2026 x86_64 GNU/Linux |

---

## Binary Number Representation

### 1. Decimal to Binary Conversion (75 to Binary)
Using repeated division by 2 and recording remainders:

- 75 ÷ 2 = 37 remainder **1** (LSB)
- 37 ÷ 2 = 18 remainder **1**
- 18 ÷ 2 = 9 remainder **0**
- 9 ÷ 2 = 4 remainder **1**
- 4 ÷ 2 = 2 remainder **0**
- 2 ÷ 2 = 1 remainder **0**
- 1 ÷ 2 = 0 remainder **1** (MSB)

Reading remainders from bottom to top (MSB to LSB):
**75 (decimal) = 1001011 (binary)**

Verification: `64 + 0 + 0 + 8 + 0 + 2 + 1 = 75`

### 2. Binary to Decimal Conversion (110101 to Decimal)
Using the positional weight method (powers of 2 from right to left, starting at `2^0`):

- Bit 5: `1 × 2^5 = 1 × 32 = 32`
- Bit 4: `1 × 2^4 = 1 × 16 = 16`
- Bit 3: `0 × 2^3 = 0 × 8  = 0`
- Bit 2: `1 × 2^2 = 1 × 4  = 4`
- Bit 1: `0 × 2^1 = 0 × 2  = 0`
- Bit 0: `1 × 2^0 = 1 × 1  = 1`

Sum of positional values: `32 + 16 + 0 + 4 + 0 + 1 = 53`  
**110101 (binary) = 53 (decimal)**

### 3. Why Computers Use Binary Internally
Computers use binary internally because digital electronic hardware is built from transistors that reliably operate in two stable electrical states—ON (1) and OFF (0)—making two-state logic simple, fast, and resistant to signal noise.
