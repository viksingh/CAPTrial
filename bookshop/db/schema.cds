namespace org.saki;

aspect cuid {
    key ID : UUID;
}


entity Books : cuid {
    title  : String;
    author : Association to Authors;
}


entity Authors : cuid {
    name  : String;
    books : Association to many Books
                on books.author = $self
}


entity Orders : cuid {
    comment : String;
    Items   : Composition of many {
                  key pos      : Integer;
                      quantity : Integer;
                      book     : Association to Books;

              }
}
