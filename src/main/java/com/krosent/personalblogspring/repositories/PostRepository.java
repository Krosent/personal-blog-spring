package com.krosent.personalblogspring.repositories;
import com.krosent.personalblogspring.models.Post;
import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.PagingAndSortingRepository;


import java.awt.print.Pageable;
import java.util.List;

public interface PostRepository extends PagingAndSortingRepository<Post, Long> {
    @Query("SELECT * FROM post WHERE author_id = :userId")
    public List<Post> findAllPostsOfTheUser(Long userId);

    @Query("SELECT * FROM post WHERE featured = true LIMIT 1")
    public Post findFeaturedPost();


}
