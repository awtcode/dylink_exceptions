#define null 0
#pragma pack (push, 8)
class sidey {
public:
    sidey(float a, float b, float c, float d, float e = 0.0f, int f = 0, float const* g = null);
    sidey();
    sidey(sidey const& a);
    ~sidey();
    sidey const& operator= (sidey const& a);
    static const sidey abc;
};

class sidey2 {
public:
    sidey2() {}
    sidey2(int count, sidey const* array, bool set = true);
};

#define NEW(T, ptr)  new T