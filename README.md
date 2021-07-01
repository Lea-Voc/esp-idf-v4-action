# ESP-IDF v4.x installer

GitHub Action to install **Espressif IoT Development Framework v4.2** and **Espressif Audio Development Framework** for building ESP32 code.

**Note:** The action is built for Ubuntu 20.04 LTS. It may or may not work with other Ubuntu or Debian versions.

## Usage

Source the ESP-IDF required environment variables before building your code:

### Example

```yml
name: ESP32 Builder

on: [push]

jobs:
  builder:
    name: Builder for test ESP32 project
    runs-on: ubuntu-20.04

    steps:
      - name: Checkout code
        uses: actions/checkout@v2

      - name: Install ESP-IDF
        uses: Lea-Voc/esp-idf-v4-action@v4
        with:
          esp_idf_version: 'v4.2'

      - name: Build
        run: |
          source ~/esp/esp-idf/export.sh
          idf.py reconfigure
          idf.py app
          idf.py size
```

## License

This repository is licensed with the [MIT License](LICENSE).
