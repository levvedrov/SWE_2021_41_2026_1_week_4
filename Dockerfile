FROM ubuntu:latest
RUN apt-get update 
RUN apt-get install -y python3
CMD ["python3", "-c", "\
def isHappy(n):\n\
  n = str(n)\n\
  i = 0\n\
  limit = 100\n\
  while True:\n\
    if i >= limit: return False\n\
    tmp = 0\n\
    for index in n:\n\
      tmp+=int(index)**2\n\
    n=str(tmp)\n\
    if n == '1': return True\n\
    i+=1\n\
print(isHappy(19))\n\
print(isHappy(2))\n\

"]