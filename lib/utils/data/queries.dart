import 'package:graphql_flutter/graphql_flutter.dart';

signup() => gql('''

mutation ( \$first_name: String! = "",  \$last_name: String! = "", \$user_name: String! = "", \$phone_no: String! = "", \$email: String! = "", \$password: String! = "") {
  insert_user_account_one(object: {first_name: \$first_name, last_name: \$last_name, user_name: \$user_name, phone_no: \$phone_no, email: \$email, password: \$password}) {
    id
    user_name
  }
}



''');

// locations() => gql('''
login() => gql('''

query MyQuery(\$email: String = "", \$pass: String = "") {
  user_account(where: {email: {_eq: \$email}, password: {_eq: \$pass}}) {
    id
    user_name
  }
}

''');

tenders() => gql('''
query MyQuery {
  tenders(order_by: {created_at: asc}) {
    id
    title
    tender_poster_company_id
    created_at
    closing_date
    category
    bidding_hosting_location
    bid_no
    bid_document_price
    description
    mode_of_procurement
    procurement_type
    start_date
    requirements_doc_link
    tender_status {
      status
    }
    tender_locations {
      location_id
      location {
        name
      }
    }
  }
}

''');

create_tender() => gql('''

mutation (\$title: String = "", \$tender_poster_company_id: Int = "", \$status: String = "", \$start_date: date = "", \$requirements_doc_link: String = "", \$procurement_type: String = "", \$mode_of_procurement: String = "", \$description: String = "",\$closing_date: date = "", \$category: String = "", \$bidding_hosting_location: String = "", \$bid_no: String = "", \$bid_document_price: money = "", \$location_id: Int = "") {
  insert_tenders_one(object: {title: \$title, tender_poster_company_id: \$tender_poster_company_id, status: \$status, start_date: \$start_date, requirements_doc_link: \$requirements_doc_link, procurement_type: \$procurement_type, mode_of_procurement: \$mode_of_procurement, description: \$description, closing_date: \$closing_date, category: \$category, bidding_hosting_location: \$bidding_hosting_location, bid_no: \$bid_no, bid_document_price: \$bid_document_price, tender_locations: {data: {location_id: \$location_id}}}) {
    title
  }
}

''');

blogs() => gql('''
query {
  blogs {
    id
    title
    description
    created_at
    updated_at
    company_page {
      id
      
    }
  }
}
''');

news() => gql('''
query {
  news {
    id
    title
    description
    created_at
    updated_at
    
  }
}
''');

company_pages() => gql('''
query {
  company_pages {
    id
    name
    description
    created_at
    updated_at
    user_account {
      id
      
    }
  }
}
''');



// query {
// 	locations {
// 			info {
// 			count
// 			pages
// 			next 
// 			prev
// 		}

// 		results {
//     id
// 			name
// 			dimension
// 		}
// 	}
// }


// ''');

// episodes() => gql("""


// query {
// 	episodes {
// 		info {
// 			count
// 			pages
// 			next 
// 			prev
// 		}

// 		results {
//     id
// 			air_date
// 			name
// 			episode
// 		}
// 	}
// }

// """);
