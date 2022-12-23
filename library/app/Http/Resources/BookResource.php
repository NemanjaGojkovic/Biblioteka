<?php

namespace App\Http\Resources;

use App\Models\Category;
use App\Models\Publisher;
use Illuminate\Http\Resources\Json\JsonResource;

class BookResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */

    public static $wrap='book';

    public function toArray($request)
    {
        return [
            'id'=>$this->resource->id,
            'title'=>$this->resource->title,
            'description'=>$this->resource->description,
            'publish_date'=>$this->resource->publish_date,
            'category'=>new CategoryResource($this->resource->category), 
            'author'=>new AuthorResource($this->resource->author), 
            'publisher'=>new PublisherResource($this->resource->publisher),
            'user'=>new UserResource($this->resource->user)
        ];
    }
}
