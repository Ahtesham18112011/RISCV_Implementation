# Implementation of the [RISC-V](https://github.com/Ahtesham18112011/RISCV_MYTH) core in [VSDSquadron FPGA Mini](https://github.com/Ahtesham18112011/VSDSquadron_FM)

To implement the Transaction Level - Verilog (TL-Verilog) code to the FPGA is directly not possible we need to first convert the code to Verilog which is done by a software called **Sandpiper SaaS**.

## SandPiper SaaS
SandPiper SaaS(Software as a Service) Edition runs [Redwood EDA LLC's](https://www.redwoodeda.com/)  SandPiper™ TL-Verilog compiler as a microservice in the cloud to support low-overhead and zero-cost open-source development using commercial-grade capabilities. This simple Python script provides a convenient command-line interface to the microservice. Which is also used for implementing a WARP-V or RISC-V core in FPGA.

## Installing Sandpiper SaaS

To install Sandpiper SaaS it is good to install it from virtual Linux software. Installing Sandpiper from Linux can be beneficial because it's a tool primarily designed for use within Linux environments and can be more easily adapted and integrated with other Linux systems and applications.

Go to the Linux terminal and type:

            pip3 install sandpiper-saas

**OR**

You can install it from its official website. [SandPiper-SaaS](https://pypi.org/project/sandpiper-saas/). After instaling (from website) unzip the file.

**OR**

from the git repository itself:

                git clone git@gitlab.com:rweda/sandpiper-saas.git
                cd sandpiper-saas
                pip3 install 


### Basic Usage

On an existing TL-Verilog source file, type this in terminal:

                        sandpiper-saas -i design.tlv -o design.sv


For complete usage instructions, type:

                        sandpiper-saas --help


## Convert the CPU's TL-Verilog file to Verilog file

Clone the repository:

                        git clone https://github.com/Ahtesham18112011/RISCV_Implementation.git
                        


You will see a file named riscv.tlv, to convert it to verilog. type:

                         sandpiper-saas -i riscv.tlv -o riscv.v

> [!NOTE]
> 1. There are all the necessary files in my repo and when you will clone it you will also have all the necassary files. So you do not need to worry about if your code is not converting to Verilog. 
> 2. If you want to convert the TL-Verilog file to System Verilog in other cases, just remove the `-p verilog` option in the first line of the TL-Verilog code.

## Implementing the RISC-V core in the VSDSquadronFM FPGA

1. After cloning  the  repository type:

                        cd codes

2. Open the terminal and go  to the codes directory by typing:

                        cd <yourdirectory/codes>

3. Then type:

                          make build

4. Make sure you have connected the [VSDSquadronFM](https://www.vlsisystemdesign.com/vsdsquadronfm/) board to the virtual machine. Click on the devices button on the top left corner and select FTDI. Ans check it by typing:

                        lsusb

5. Then type:

                        sudo make flash


## Check the output

To check the output od the CPU. We need 8 LEDs.



