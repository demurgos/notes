# Partitions

If you have a motherboard supporting GPT, use it as your label instead of MBT to
only create primary partitions.

## Linux-only

| ID | Role    | Size                      |
|----|---------|---------------------------|
| -  | unused  | 2 Mib                     |
| 1  | `/boot` | 512 Mib = 536870912 bytes |
| 2  | swap    | See Swap table            |
| 3  | `/`     | All the remaining space   |

## Swap depending on memory

| RAM size | Swap size                   |
|----------|-----------------------------|
| 512 MiB  | 1024 MiB = 1073741824 bytes |
| 1024 MiB | 1024 MiB = 1073741824 bytes |
| 2048 MiB | 2048 MiB = 2147483648 bytes |
| 4096 MiB | 3072 MiB = 3221225472 bytes |
| 8 GiB    | 4096 MiB = 4294967296 bytes |
| 16 GiB   | 4096 MiB = 4294967296 bytes |
