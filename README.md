# nvim-ide
ide base on neovim
int find_end_flag(u_char *data, ssize_t len)
{
for (int i = 0; i < len; i++)
if (data[i] == 0x7e && i != 0)
return i;

return -1;
}

ssize_t ql_read_pppframe(int fd, u_char *buf, ssize_t len)
{
int  n, pos = 0, end_index = -1;
ssize_t total = 0;
u_char *bufp = buf;
static ssize_t left_len;
static u_char left[2048];

end_index = find_end_flag(left + pos, left_len);

while (left_len == 0 || end_index == -1) {
if ((n = read(fd, left + pos, len)) < 0)
return n;

len -= n;
left_len += n;
end_index = find_end_flag(left + pos, left_len);
pos += n;
}

if (left[0] != 0x7e) {
*bufp  = 0x7e;
bufp++;
total++;
}

total += (end_index + 1);
memcpy(bufp, left, end_index + 1);

left_len -= (end_index + 1);
memmove(left, left + end_index + 1, left_len);

return total;
}
