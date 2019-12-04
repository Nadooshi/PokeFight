trainer_count = 0 

if not directory_exists("trainer_saves")
	directory_create("trainer_saves")

var fn = file_find_first("trainer_saves/*.ini",0)
while fn<>"" {
	trainer_fnames[trainer_count] = fn;
	trainer_count++
	fn = file_find_next()
}
file_find_close()
