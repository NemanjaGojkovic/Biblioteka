<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class AuthorResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public static $wrap = "author";

    public function toArray($request)
    {
        return [
            'id'=>$this->resource->id,
            'firstname'=>$this->resource->firstname,
            'lastname'=>$this->resource->lastname,
            'birthday'=>$this->resource->birthday,
            'gender'=>$this->resource->gender, 
            'country'=>new CountryResource($this->resource->country)
        ];
    }
}
