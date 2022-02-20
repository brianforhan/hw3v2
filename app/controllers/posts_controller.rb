class PostsController < ApplicationController
    
    def new
        @post = Post.new
        @places = Places.find(params["post_id"])
        @post.places_id = @post.id
    end
    
    def create
        @post = Post.new(params["post"])
        @post.save
        redirect_to "/places"
    end
    
end
