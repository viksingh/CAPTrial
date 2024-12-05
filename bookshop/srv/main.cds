using org from '../db/schema.cds';

service bookshop {
entity Books as projection on org.saki.Books;
entity Authors as projection on org.saki.Authors;
}
