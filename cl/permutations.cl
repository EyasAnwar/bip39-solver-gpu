static int fact(int y){
    if (y == 0){
        return 1;
    }
    return y * fact(y - 1);
}

static uchar pop(uchar * array, int size, int index){
    uchar value = array[index];
    for (int i = index; i <size-1; i++){
        array[i] = array[i+1];
    }
    return value;
}


static void nth_permutation(int len, ulong index, uchar *array){
    uchar values[12] = {0};
    int size = 12;
    for(int i=0; i<len; i++){
        values[i] = i;
    }
    int c = fact(len);
    index = index % c;
    int q = index;
    uchar result[12] = {0};
    for(int d=1; d<len + 1; d++){
        q = index / d;
        int i = index % d;
        if (0 <= len - d && len - d < len){
            result[len - d] = i;
        }
        if (q == 0){
            break;
        }
    }
    for(int i=0; i<len; i++){
        array[i] = pop(values, size--, result[i]);
    }
}