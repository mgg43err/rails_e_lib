// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "./controllers"

import { application } from "./application"

import LiveSearchController from "./live_search_controller"
import CharacterCountController from "./character_count_controller"
import EditInPlaceController from "./edit_in_place_controller"

application.register("live-search", LiveSearchController)
application.register("character-count", CharacterCountController)
application.register("edit-in-place", EditInPlaceController)