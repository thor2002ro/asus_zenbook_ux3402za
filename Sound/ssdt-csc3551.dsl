DefinitionBlock ("", "SSDT", 1, "CUSTOM", "CS3551", 0x0000300A)
{

    External (_SB_.PC00.SPI0, DeviceObj)
    External (_SB_.PC00.SPI0.SPK1, DeviceObj)

    Scope (_SB.PC00.SPI0.SPK1)
    {
        Method (_DSD, 0, NotSerialized)  // _DSD: Device Specific Data
        {
            Return (Package ()
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301"),
                    Package ()
                    {
                        Package () { "cirrus,dev-index", Package () { Zero, One }},
                        Package () { "reset-gpios", Package () {
                           SPK1, One, Zero, Zero,
                           SPK1, One, Zero, Zero
                        } },
                        Package () { "spk-id-gpios", Package () {
                             SPK1, 0x02, Zero, Zero,
                             SPK1, 0x02, Zero, Zero,
                        } },
                        Package () { "cirrus,speaker-position", Package () { Zero, One } },
                        Package () { "cirrus,gpio1-func", Package () { One, One } },
                        Package () { "cirrus,gpio2-func", Package () { 0x02, 0x02 } },
                        // boost-type: 0 internal, 1 external
                        Package () { "cirrus,boost-type", Package () { One, One } },
                        // boost-peak-milliamp: 1600 to 4500, increments of 50 mA
                        //Package () { "cirrus,boost-peak-milliamp",  Package () { 3000, 3000 } },
                        // boost-ind-nanohenry: 1000 | 1200 | 1500 | 2200 nH
                        //Package () { "cirrus,boost-ind-nanohenry",  Package () { 1000, 1000 } },
                        // boost-cap-microfarad: rounded to the nearest integer
                        //Package () { "cirrus,boost-cap-microfarad", Package () { 15, 15 } },
                    }
                }) /* \_SB_.PC00.SPI0.SPK1._DSD */
        }
    }

    Scope (_SB.PC00.SPI0)
    {
        Method (_DSD, 0, NotSerialized)  // _DSD: Device Specific Data
        {
            Return (Package ()
                {
                    ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301"),
                    Package ()
                    {
                        Package () { "cs-gpios", Package () { 
                            Zero,                    // Native CS
                            SPK1, Zero, Zero, Zero   // GPIO CS
                        } }
                    }
                }) /* \_SB_.PC00.SPI0.SPK1._DSD */
        }
    }
}
