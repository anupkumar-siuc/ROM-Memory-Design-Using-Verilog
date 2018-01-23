set search_path ". /synopsys/GPDK/SAED_EDK90nm/Digital_Standard_Cell_Library/synopsys/models"
set link_library "saed90nm_max.db"
set target_library "saed90nm_max.db"
set symbol_library "saed90nm_max.db"
analyze -library WORK -format verilog {/home/grad/siu854438669/ECE516_Anup/lab5/2a_root/root.v}
elaborate root -library WORK
link
compile -exact_map


