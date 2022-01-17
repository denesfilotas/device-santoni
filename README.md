# Device Tree for Xiaomi Redmi 4X (santoni)

## Notes
- For camera and fingerprint to work, libstdc++ is needed to be vendor available. See [here](https://review.lineageos.org/c/LineageOS/android_bionic/+/256148).
- Snap camera is not available in arcadia branch, clone previous version to packages/apps or go with AOSP Camera2.

## Automatic sideload when building on a local machine
You can build the source with the `blissify` command. If the build is successful, you can `adb sideload` using the `nom` command. Later on, `nomnom` can be used to build and sideload automatically. These commands are to replace the Bliss default `eat` and `omnom`, because they seem to be broken.



## Spec Sheet

| Feature                 | Specification                     |
| :---------------------- | :-------------------------------- |
| CPU                     | Octa-core 1.4 GHz Cortex-A53      |
| Chipset                 | Qualcomm MSM8940 Snapdragon 435   |
| GPU                     | Adreno 505                        |
| Memory                  | 2/3 GB                            |
| Shipped Android Version | 6.0.1                             |
| Storage                 | 16/32 GB                          |
| MicroSD                 | Up to 256 GB                      |
| Battery                 | 4100 mAh (non-removable)          |
| Dimensions              | 139 x 69 x 8.65 mm                |
| Display                 | 720 x 1280 pixels, 5" (~294 PPI)   |
| Rear Camera             | 13 MP, LED flash                  |
| Front Camera            | 5 MP                              |
| Release Date            | May 2017                          |

## Device Picture

![Redmi 4X](https://cdn.tgdd.vn/Products/Images/42/99145/xiaomi-redmi-4x-400-400x460.png "Redmi 4X")
