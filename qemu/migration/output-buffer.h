#ifndef QEMU_OUTPUT_BUFFER_H
#define QEMU_OUTPUT_BUFFER_H

int mc_enable_buffering(void);
int mc_start_buffer(void);
int mc_flush_oldest_buffer(void);
uint64_t out_packets(void);

#endif /* QEMU_OUTPUT_BUFFER_H */
