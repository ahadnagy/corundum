# Placement constraints
create_pblock pblock_slr0
add_cells_to_pblock [get_pblocks pblock_slr0] [get_cells -quiet [list core_inst/dma_if_mux_inst]]
add_cells_to_pblock [get_pblocks pblock_slr0] [get_cells -quiet [list core_inst/iface[0].interface_inst]]
add_cells_to_pblock [get_pblocks pblock_slr0] [get_cells -quiet [list core_inst/iface[1].interface_inst]]
resize_pblock [get_pblocks pblock_slr0] -add {SLR0}

#create_pblock pblock_slr1
#add_cells_to_pblock [get_pblocks pblock_slr1] [get_cells -quiet [list ]]
#resize_pblock [get_pblocks pblock_slr1] -add {SLR1}

#create_pblock pblock_slr2
#add_cells_to_pblock [get_pblocks pblock_slr2] [get_cells -quiet [list ]]
#resize_pblock [get_pblocks pblock_slr2] -add {SLR2}

create_pblock pblock_pcie
add_cells_to_pblock [get_pblocks pblock_pcie] [get_cells -quiet [list pcie4c_uscale_plus_inst]]
add_cells_to_pblock [get_pblocks pblock_pcie] [get_cells -quiet [list core_inst/dma_if_pcie_us_inst]]
resize_pblock [get_pblocks pblock_pcie] -add {CLOCKREGION_X6Y0:CLOCKREGION_X7Y3}

create_pblock pblock_eth
add_cells_to_pblock [get_pblocks pblock_eth] [get_cells -quiet [list qsfp0_cmac_inst qsfp0_cmac_pad_inst]]
add_cells_to_pblock [get_pblocks pblock_eth] [get_cells -quiet [list core_inst/iface[0].mac[0].mac_tx_fifo_inst core_inst/iface[0].mac[0].mac_rx_fifo_inst]]
add_cells_to_pblock [get_pblocks pblock_eth] [get_cells -quiet [list qsfp1_cmac_inst qsfp1_cmac_pad_inst]]
add_cells_to_pblock [get_pblocks pblock_eth] [get_cells -quiet [list core_inst/iface[1].mac[0].mac_tx_fifo_inst core_inst/iface[1].mac[0].mac_rx_fifo_inst]]
resize_pblock [get_pblocks pblock_eth] -add {CLOCKREGION_X0Y8:CLOCKREGION_X0Y11}
