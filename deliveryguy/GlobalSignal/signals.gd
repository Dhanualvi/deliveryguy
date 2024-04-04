extends Node

signal package_data_ready(Array)
signal send_package(String)
signal package_arrived(String)
signal package_matched
signal add_score
signal update_score(int)
signal play_pickup_sound(String)
signal play_add_score_sound(String)
signal record_high_score
signal update_high_score(int)

var high_score = 0
