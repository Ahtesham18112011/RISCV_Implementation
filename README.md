# Implementation of the [RISC-V](https://github.com/Ahtesham18112011/RISCV_MYTH) core in VSDSquadron FPGA Mini

To implement the Transaction Level - Verilog (TL-Verilog) code to the FPGA is directly not possible we need to first convert the code to Verilog which is done by a software called **Sandpiper SaaS**

## SandPiper SaaS
SandPiper SaaS(Software as a Service) Edition runs [Redwood EDA LLC's](https://www.redwoodeda.com/)  SandPiper™ TL-Verilog compiler as a microservice in the cloud to support low-overhead and zero-cost open-source development using commercial-grade capabilities. This simple Python script provides a convenient command-line interface to the microservice. Which is also used for implementing a WARP-V or RISC-V core in FPGA.

## Installing Sandpiper SaaS

To install Sandpiper SaaS it is good to install it from virtual Linux software. Installing Sandpiper from Linux can be beneficial because it's a tool primarily designed for use within Linux environments and can be more easily adapted and integrated with other Linux systems and applications.

1. Go to the Linux terminal and type:

        pip3 install sandpiper-saas

**OR**

  You can install it from its official website. [SandPiper-SaaS](https://pypi.org/project/sandpiper-saas/). After instaling (from website) unzip the file.

**OR**

  from the git repository itself:

                git clone git@gitlab.com:rweda/sandpiper-saas.git
                cd sandpiper-saas
                pip3 install 
