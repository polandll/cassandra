// tag::simple-query[]
SELECT * FROM cycling.comments_vs 
    ORDER BY comment_vector ANN OF [0.15, 0.1, 0.1, 0.35, 0.55] 
    LIMIT 3;
// end::simple-query[]

// tag::similarity-query[]
SELECT  comment, similarity_cosine(comment_vector, [0.2, 0.15, 0.3, 0.2, 0.05]) 
    FROM cycling.comments_vs
    ORDER BY comment_vector ANN OF [0.1, 0.15, 0.3, 0.12, 0.05] 
    LIMIT 3;
// end::similarity-query[]