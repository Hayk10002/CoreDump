# CoreDump

This directory contains scripts for generating and inspecting core dump files in a Linux environment.

## Files

- **gen_core.sh**  
    This script, when executed, sends a `SIGSEGV` (segmentation fault) to itself using `kill -SEGV $$`. Its purpose is to intentionally crash the process and generate a core dump file.

- **run.sh**  
    This script prepares the environment for core dump generation:
    - Sets the core dump file location to the current directory with the filename `core`.
    - Sets the core dump size to unlimited.
    - Executes `gen_core.sh` to trigger a core dump.
    - Uses `xxd` to display the first 160 octets of the generated core dump file.

## Usage

```bash
chmod +x gen_core.sh run.sh
./run.sh
```
or simply

```bash
bash ./run.sh
```

After running, you will see a hex dump of the beginning of the core file.

## Requirements

- Bash shell
- `xxd` utility
- Sufficient permissions to generate core dumps
