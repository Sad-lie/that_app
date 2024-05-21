
# [info] Running ThatAppWeb.Endpoint with Bandit 1.5.2 at 127.0.0.1:4000 (http)
# [info] Access ThatAppWeb.Endpoint at http://localhost:4000
# [watch] build finished, watching for changes...
# Erlang/OTP 26 [erts-14.2.5] [source] [64-bit] [smp:16:12] [ds:16:12:10] [async-threads:1] [jit:ns]

# Interactive Elixir (1.16.2) - press Ctrl+C to exit (type h() ENTER for help)

# Rebuilding...

# Done in 400ms.
# [info] GET /
# [debug] Processing with ThatAppWeb.PageController.home/2
#   Parameters: %{}
#   Pipelines: [:browser]
# [info] Sent 200 in 95ms
# [info] GET /posts
# [debug] Processing with ThatAppWeb.PostLive.Index.index/2
#   Parameters: %{}
#   Pipelines: [:browser]
# ----------this is mount--------
# %{}
# #Phoenix.LiveView.Socket<
#   id: "phx-F9Eo613eHpWKxgZE",
#   endpoint: ThatAppWeb.Endpoint,
#   view: ThatAppWeb.PostLive.Index,
#   parent_pid: nil,
#   root_pid: nil,
#   router: ThatAppWeb.Router,
#   assigns: %{__changed__: %{}, flash: %{}, live_action: :index},
#   transport_pid: nil,
#   ...
# >
# [debug] QUERY OK source="posts" db=3.7ms queue=0.6ms idle=1230.0ms
# SELECT p0."id", p0."description", p0."title", p0."tags", p0."user_id", p0."inserted_at", p0."updated_at" FROM "posts" AS p0 []
# ↳ ThatAppWeb.PostLive.Index.mount/3, at: lib/that_app_web/live/post_live/index.ex:12
# ----------this is handle params --------
# %{}
# #Phoenix.LiveView.Socket<
#   id: "phx-F9Eo613eHpWKxgZE",
#   endpoint: ThatAppWeb.Endpoint,
#   view: ThatAppWeb.PostLive.Index,
#   parent_pid: nil,
#   root_pid: nil,
#   router: ThatAppWeb.Router,
#   assigns: %{
#     __changed__: %{streams: true},
#     flash: %{},
#     streams: %{
#       __changed__: MapSet.new([:posts]),
#       posts: %Phoenix.LiveView.LiveStream{
#         name: :posts,
#         dom_id: #Function<3.53432546/1 in Phoenix.LiveView.LiveStream.new/4>,
#         ref: "0",
#         inserts: [
#           {"posts-68528957-8f2a-4312-94a0-3ab16d771db1", -1,
#            %ThatApp.Blogs.Post{
#              __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#              id: "68528957-8f2a-4312-94a0-3ab16d771db1",
#              description: "new",
#              title: "title",
#              tags: "new",
#              user_id: nil,
#              inserted_at: ~U[2024-05-19 16:09:18Z],
#              updated_at: ~U[2024-05-19 16:09:36Z]
#            }, nil}
#         ],
#         deletes: [],
#         reset?: false,
#         consumable?: false
#       },
#       __configured__: %{},
#       __ref__: 1
#     },
#     live_action: :index
#   },
#   transport_pid: nil,
#   ...
# >
# ----------this is apply_action_index  user--------
# :index
# #Phoenix.LiveView.Socket<
#   id: "phx-F9Eo613eHpWKxgZE",
#   endpoint: ThatAppWeb.Endpoint,
#   view: ThatAppWeb.PostLive.Index,
#   parent_pid: nil,
#   root_pid: nil,
#   router: ThatAppWeb.Router,
#   assigns: %{
#     __changed__: %{streams: true},
#     flash: %{},
#     streams: %{
#       __changed__: MapSet.new([:posts]),
#       posts: %Phoenix.LiveView.LiveStream{
#         name: :posts,
#         dom_id: #Function<3.53432546/1 in Phoenix.LiveView.LiveStream.new/4>,
#         ref: "0",
#         inserts: [
#           {"posts-68528957-8f2a-4312-94a0-3ab16d771db1", -1,
#            %ThatApp.Blogs.Post{
#              __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#              id: "68528957-8f2a-4312-94a0-3ab16d771db1",
#              description: "new",
#              title: "title",
#              tags: "new",
#              user_id: nil,
#              inserted_at: ~U[2024-05-19 16:09:18Z],
#              updated_at: ~U[2024-05-19 16:09:36Z]
#            }, nil}
#         ],
#         deletes: [],
#         reset?: false,
#         consumable?: false
#       },
#       __configured__: %{},
#       __ref__: 1
#     },
#     live_action: :index
#   },
#   transport_pid: nil,
#   ...
# >
# [info] Sent 200 in 61ms
# [info] CONNECTED TO Phoenix.LiveView.Socket in 17µs
#   Transport: :websocket
#   Serializer: Phoenix.Socket.V2.JSONSerializer
#   Parameters: %{"_csrf_token" => "UxcFEHwVMzM6UT0jeT89MQg-EAccMXkN4XDq1JFaOgEL8WHziYJBZiNw", "_live_referer" => "undefined", "_mounts" => "0", "_track_static" => %{"0" => "http://localhost:4000/assets/app.css", "1" => "http://localhost:4000/assets/app.js"}, "vsn" => "2.0.0"}
# ----------this is mount--------
# [debug] MOUNT ThatAppWeb.PostLive.Index
#   Parameters: %{}
#   Session: %{"_csrf_token" => "gOAaM_uRu6xoAhuKagZEFX7z"}
# %{}
# #Phoenix.LiveView.Socket<
#   id: "phx-F9Eo613eHpWKxgZE",
#   endpoint: ThatAppWeb.Endpoint,
#   view: ThatAppWeb.PostLive.Index,
#   parent_pid: nil,
#   root_pid: #PID<0.752.0>,
#   router: ThatAppWeb.Router,
#   assigns: %{__changed__: %{}, flash: %{}, live_action: :index},
#   transport_pid: #PID<0.745.0>,
#   ...
# >
# [debug] QUERY OK source="posts" db=1.4ms idle=1346.8ms
# SELECT p0."id", p0."description", p0."title", p0."tags", p0."user_id", p0."inserted_at", p0."updated_at" FROM "posts" AS p0 []
# ↳ ThatAppWeb.PostLive.Index.mount/3, at: lib/that_app_web/live/post_live/index.ex:12
# ----------this is handle params --------
# [debug] Replied in 4ms
# %{}
# [debug] HANDLE PARAMS in ThatAppWeb.PostLive.Index
#   Parameters: %{}
# #Phoenix.LiveView.Socket<
#   id: "phx-F9Eo613eHpWKxgZE",
#   endpoint: ThatAppWeb.Endpoint,
#   view: ThatAppWeb.PostLive.Index,
#   parent_pid: nil,
#   root_pid: #PID<0.752.0>,
#   router: ThatAppWeb.Router,
#   assigns: %{
#     __changed__: %{streams: true},
#     flash: %{},
#     streams: %{
#       __changed__: MapSet.new([:posts]),
#       posts: %Phoenix.LiveView.LiveStream{
#         name: :posts,
#         dom_id: #Function<3.53432546/1 in Phoenix.LiveView.LiveStream.new/4>,
#         ref: "0",
#         inserts: [
#           {"posts-68528957-8f2a-4312-94a0-3ab16d771db1", -1,
#            %ThatApp.Blogs.Post{
#              __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#              id: "68528957-8f2a-4312-94a0-3ab16d771db1",
#              description: "new",
#              title: "title",
#              tags: "new",
#              user_id: nil,
#              inserted_at: ~U[2024-05-19 16:09:18Z],
#              updated_at: ~U[2024-05-19 16:09:36Z]
#            }, nil}
#         ],
#         deletes: [],
#         reset?: false,
#         consumable?: false
#       },
#       __configured__: %{},
#       __ref__: 1
#     },
#     live_action: :index
#   },
#   transport_pid: #PID<0.745.0>,
#   ...
# >
# ----------this is apply_action_index  user--------
# :index
# #Phoenix.LiveView.Socket<
#   id: "phx-F9Eo613eHpWKxgZE",
#   endpoint: ThatAppWeb.Endpoint,
#   view: ThatAppWeb.PostLive.Index,
#   parent_pid: nil,
#   root_pid: #PID<0.752.0>,
#   router: ThatAppWeb.Router,
#   assigns: %{
#     __changed__: %{streams: true},
#     flash: %{},
#     streams: %{
#       __changed__: MapSet.new([:posts]),
#       posts: %Phoenix.LiveView.LiveStream{
#         name: :posts,
#         dom_id: #Function<3.53432546/1 in Phoenix.LiveView.LiveStream.new/4>,
#         ref: "0",
#         inserts: [
#           {"posts-68528957-8f2a-4312-94a0-3ab16d771db1", -1,
#            %ThatApp.Blogs.Post{
#              __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#              id: "68528957-8f2a-4312-94a0-3ab16d771db1",
#              description: "new",
#              title: "title",
#              tags: "new",
#              user_id: nil,
#              inserted_at: ~U[2024-05-19 16:09:18Z],
#              updated_at: ~U[2024-05-19 16:09:36Z]
#            }, nil}
#         ],
#         deletes: [],
#         reset?: false,
#         consumable?: false
#       },
#       __configured__: %{},
#       __ref__: 1
#     },
#     live_action: :index
#   },
#   transport_pid: #PID<0.745.0>,
#   ...
# >
# [debug] Replied in 752µs
# iex(1)>





#   Transport: :longpoll
#   Serializer: Phoenix.Socket.V2.JSONSerializer
#   Parameters: %{"_csrf_token" => "CXcvVx1rMX9YfwFWIwEEBztXFwIsE30Yn8n6P4D--Iy9biqLZ0MGjKJb", "_live_referer" => "http://localhost:4000/posts/4938cd49-6f28-4619-a9c7-d36ae13455d2", "_mounts" => "0", "_track_static" => %{"0" => "http://localhost:4000/assets/app.css", "1" => "http://localhost:4000/assets/app.js"}, "vsn" => "2.0.0"}
# [debug] MOUNT ThatAppWeb.PostLive.Index
#   Parameters: %{}
#   Session: %{"_csrf_token" => "gOAaM_uRu6xoAhuKagZEFX7z"}
# ----------this is mount--------
# %{}
# #Phoenix.LiveView.Socket<
#   id: "phx-F9EnqL2W0Wdi3gIB",
#   endpoint: ThatAppWeb.Endpoint,
#   view: ThatAppWeb.PostLive.Index,
#   parent_pid: nil,
#   root_pid: #PID<0.741.0>,
#   router: ThatAppWeb.Router,
#   assigns: %{__changed__: %{}, flash: %{}, live_action: :index},
#   transport_pid: #PID<0.727.0>,
#   ...
# >

# ----------this is handle params --------

# ----------this is apply_action_index  user--------

# ----------this is handle params --------

# ----------this is apply_action_new user--------
# :new
# #Phoenix.LiveView.Socket<
#   id: "phx-F9EnqL2W0Wdi3gIB",
#   endpoint: ThatAppWeb.Endpoint,
#   view: ThatAppWeb.PostLive.Index,
#   parent_pid: nil,
#   root_pid: #PID<0.741.0>,
#   router: ThatAppWeb.Router,
#   assigns: %{
#     post: nil,
#     __changed__: %{live_action: true},
#     page_title: "Listing Posts",
#     flash: %{},
#     live_action: :new,
#     streams: %{
#       __changed__: MapSet.new([]),
#       posts: %Phoenix.LiveView.LiveStream{
#         name: :posts,
#         dom_id: #Function<3.53432546/1 in Phoenix.LiveView.LiveStream.new/4>,
#         ref: "0",
#         inserts: [],
#         deletes: [],
#         reset?: false,
#         consumable?: false
#       },
#       __configured__: %{},
#       __ref__: 1
#     }
#   },
#   transport_pid: #PID<0.727.0>,
#   ...
# >
# [debug] Replied in 1ms
# ================= this is update post =================

# ================= this is assign_form post =================

# ================= this is render save post =================

# ================= this is handle event validate post  =================

# ================= this is assign_form post =================

# ================= this is render save post =================

# ================= this is handle event validate post  =================

# ================= this is assign_form post =================

# ================= this is render save post =================

# ================= this is handle event validate post  =================

# ================= this is assign_form post =================

# ================= this is render save post =================

# ================= this is handle event validate post  =================

# ================= this is assign_form post =================

# ================= this is render save post =================

#   Component: ThatAppWeb.PostLive.FormComponent
#   Parameters: %{"_target" => ["post", "tags"], "post" => %{"description" => "", "tags" => "on", "title" => "one"}}
# ================= this is handle event validate post  =================

# ================= this is assign_form post =================

# ================= this is render save post =================

#   Component: ThatAppWeb.PostLive.FormComponent
#   Parameters: %{"_target" => ["post", "tags"], "post" => %{"description" => "", "tags" => "one", "title" => "one"}}
# ================= this is handle event validate post  =================

# ================= this is assign_form post =================

# ================= this is render save post =================
# [
# ================= this is handle event validate post  =================

# ================= this is assign_form post =================

# ================= this is render save post =================

# ================= this is handle event validate post  =================

# ================= this is assign_form post =================

# ================= this is render save post =================

# ================= this is handle event validate post  =================

# ================= this is assign_form post =================

# ================= this is render save post =================

# ================= this is handle_event save post =================

# ================= this is save_event new post =================

# ================= this is notify_parant post =================

#  %ThatApp.Blogs.Post{
#    __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#    id: "cfff6258-bb87-4939-b53e-0488924628df",
#    description: "one",
#    title: "one",
#    tags: "one",
#    user_id: nil,
#    inserted_at: ~U[2024-05-20 09:19:22Z],
#    updated_at: ~U[2024-05-20 09:19:22Z]
#  }}
# ================= this is render save post =================

# ----------this is handle params --------

# ----------this is apply_action_index  user--------

# ----------this is handle info user--------

# ----------this is handle params --------

# ----------this is apply_action_edit user--------

# ================= this is update post =================

# ================= this is assign_form post =================

# ================= this is render save post =================
# %{
#   id: "cfff6258-bb87-4939-b53e-0488924628df",
#   socket: #Phoenix.LiveView.Socket<
#     id: "phx-F9EnqL2W0Wdi3gIB",
#     endpoint: ThatAppWeb.Endpoint,
#     view: ThatAppWeb.PostLive.Index,
#     parent_pid: nil,
#     root_pid: #PID<0.741.0>,
#     router: ThatAppWeb.Router,
#     assigns: #Phoenix.LiveView.Socket.AssignsNotInSocket<>,
#     transport_pid: #PID<0.727.0>,
#     ...
#   >,
#   title: "Edit Post",
#   form: %Phoenix.HTML.Form{
#     source: #Ecto.Changeset<action: nil, changes: %{}, errors: [],
#      data: #ThatApp.Blogs.Post<>, valid?: true>,
#     impl: Phoenix.HTML.FormData.Ecto.Changeset,
#     id: "post",
#     name: "post",
#     data: %ThatApp.Blogs.Post{
#       __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#       id: "cfff6258-bb87-4939-b53e-0488924628df",
#       description: "one",
#       title: "one",
#       tags: "one",
#       user_id: nil,
#       inserted_at: ~U[2024-05-20 09:19:22Z],
#       updated_at: ~U[2024-05-20 09:19:22Z]
#     },
#     action: nil,
#     hidden: [id: "cfff6258-bb87-4939-b53e-0488924628df"],
#     params: %{},
#     errors: [],
#     options: [method: "put"],
#     index: nil
#   },
#   action: :edit,
#   post: %ThatApp.Blogs.Post{
#     __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#     id: "cfff6258-bb87-4939-b53e-0488924628df",
#     description: "one",
#     title: "one",
#     tags: "one",
#     user_id: nil,
#     inserted_at: ~U[2024-05-20 09:19:22Z],
#     updated_at: ~U[2024-05-20 09:19:22Z]
#   },
#   patch: "/posts",
#   __changed__: %{
#     id: true,
#     title: true,
#     form: true,
#     action: true,
#     post: true,
#     patch: true,
#     flash: true
#   },
#   flash: %{},
#   myself: %Phoenix.LiveComponent.CID{cid: 2}
# }
# ================= this is handle event validate post  =================

# ================= this is assign_form post =================
# #
# ================= this is render save post =================

# ================= this is handle event validate post  =================
# %{"description" => "one", "tags" => "one", "title" => "one e"}
# #Phoenix.LiveView.Socket<
#   id: "phx-F9EnqL2W0Wdi3gIB",
#   endpoint: ThatAppWeb.Endpoint,
#   view: ThatAppWeb.PostLive.Index,
#   parent_pid: nil,
#   root_pid: #PID<0.741.0>,
#   router: ThatAppWeb.Router,
#   assigns: %{
#     id: "cfff6258-bb87-4939-b53e-0488924628df",
#     title: "Edit Post",
#     form: %Phoenix.HTML.Form{
#       source: #Ecto.Changeset<
#         action: :validate,
#         changes: %{title: "one "},
#         errors: [],
#         data: #ThatApp.Blogs.Post<>,
#         valid?: true
#       >,
#       impl: Phoenix.HTML.FormData.Ecto.Changeset,
#       id: "post",
#       name: "post",
#       data: %ThatApp.Blogs.Post{
#         __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#         id: "cfff6258-bb87-4939-b53e-0488924628df",
#         description: "one",
#         title: "one",
#         tags: "one",
#         user_id: nil,
#         inserted_at: ~U[2024-05-20 09:19:22Z],
#         updated_at: ~U[2024-05-20 09:19:22Z]
#       },
#       action: :validate,
#       hidden: [id: "cfff6258-bb87-4939-b53e-0488924628df"],
#       params: %{"description" => "one", "tags" => "one", "title" => "one "},
#       errors: [],
#       options: [method: "put"],
#       index: nil
#     },
#     action: :edit,
#     post: %ThatApp.Blogs.Post{
#       __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#       id: "cfff6258-bb87-4939-b53e-0488924628df",
#       description: "one",
#       title: "one",
#       tags: "one",
#       user_id: nil,
#       inserted_at: ~U[2024-05-20 09:19:22Z],
#       updated_at: ~U[2024-05-20 09:19:22Z]
#     },
#     patch: "/posts",
#     __changed__: %{},
#     flash: %{},
#     myself: %Phoenix.LiveComponent.CID{cid: 2}
#   },
#   transport_pid: #PID<0.727.0>,
#   ...
# >
# ================= this is assign_form post =================
# #Ecto.Changeset<
#   action: :validate,
#   changes: %{title: "one e"},
#   errors: [],
#   data: #ThatApp.Blogs.Post<>,
#   valid?: true
# >
# #Phoenix.LiveView.Socket<
#   id: "phx-F9EnqL2W0Wdi3gIB",
#   endpoint: ThatAppWeb.Endpoint,
#   view: ThatAppWeb.PostLive.Index,
#   parent_pid: nil,
#   root_pid: #PID<0.741.0>,
#   router: ThatAppWeb.Router,
#   assigns: %{
#     id: "cfff6258-bb87-4939-b53e-0488924628df",
#     title: "Edit Post",
#     form: %Phoenix.HTML.Form{
#       source: #Ecto.Changeset<
#         action: :validate,
#         changes: %{title: "one "},
#         errors: [],
#         data: #ThatApp.Blogs.Post<>,
#         valid?: true
#       >,
#       impl: Phoenix.HTML.FormData.Ecto.Changeset,
#       id: "post",
#       name: "post",
#       data: %ThatApp.Blogs.Post{
#         __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#         id: "cfff6258-bb87-4939-b53e-0488924628df",
#         description: "one",
#         title: "one",
#         tags: "one",
#         user_id: nil,
#         inserted_at: ~U[2024-05-20 09:19:22Z],
#         updated_at: ~U[2024-05-20 09:19:22Z]
#       },
#       action: :validate,
#       hidden: [id: "cfff6258-bb87-4939-b53e-0488924628df"],
#       params: %{"description" => "one", "tags" => "one", "title" => "one "},
#       errors: [],
#       options: [method: "put"],
#       index: nil
#     },
#     action: :edit,
#     post: %ThatApp.Blogs.Post{
#       __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#       id: "cfff6258-bb87-4939-b53e-0488924628df",
#       description: "one",
#       title: "one",
#       tags: "one",
#       user_id: nil,
#       inserted_at: ~U[2024-05-20 09:19:22Z],
#       updated_at: ~U[2024-05-20 09:19:22Z]
#     },
#     patch: "/posts",
#     __changed__: %{},
#     flash: %{},
#     myself: %Phoenix.LiveComponent.CID{cid: 2}
#   },
#   transport_pid: #PID<0.727.0>,
#   ...
# >
# ================= this is render save post =================
# [debug] Replied in 2ms
# %{
#   id: "cfff6258-bb87-4939-b53e-0488924628df",
#   socket: #Phoenix.LiveView.Socket<
#     id: "phx-F9EnqL2W0Wdi3gIB",
#     endpoint: ThatAppWeb.Endpoint,
#     view: ThatAppWeb.PostLive.Index,
#     parent_pid: nil,
#     root_pid: #PID<0.741.0>,
#     router: ThatAppWeb.Router,
#     assigns: #Phoenix.LiveView.Socket.AssignsNotInSocket<>,
#     transport_pid: #PID<0.727.0>,
#     ...
#   >,
#   title: "Edit Post",
#   form: %Phoenix.HTML.Form{
#     source: #Ecto.Changeset<
#       action: :validate,
#       changes: %{title: "one e"},
#       errors: [],
#       data: #ThatApp.Blogs.Post<>,
#       valid?: true
#     >,
#     impl: Phoenix.HTML.FormData.Ecto.Changeset,
#     id: "post",
#     name: "post",
#     data: %ThatApp.Blogs.Post{
#       __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#       id: "cfff6258-bb87-4939-b53e-0488924628df",
#       description: "one",
#       title: "one",
#       tags: "one",
#       user_id: nil,
#       inserted_at: ~U[2024-05-20 09:19:22Z],
#       updated_at: ~U[2024-05-20 09:19:22Z]
#     },
#     action: :validate,
#     hidden: [id: "cfff6258-bb87-4939-b53e-0488924628df"],
#     params: %{"description" => "one", "tags" => "one", "title" => "one e"},
#     errors: [],
#     options: [method: "put"],
#     index: nil
#   },
#   action: :edit,
#   post: %ThatApp.Blogs.Post{
#     __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#     id: "cfff6258-bb87-4939-b53e-0488924628df",
#     description: "one",
#     title: "one",
#     tags: "one",
#     user_id: nil,
#     inserted_at: ~U[2024-05-20 09:19:22Z],
#     updated_at: ~U[2024-05-20 09:19:22Z]
#   },
#   patch: "/posts",
#   __changed__: %{
#     form: %Phoenix.HTML.Form{
#       source: #Ecto.Changeset<
#         action: :validate,
#         changes: %{title: "one "},
#         errors: [],
#         data: #ThatApp.Blogs.Post<>,
#         valid?: true
#       >,
#       impl: Phoenix.HTML.FormData.Ecto.Changeset,
#       id: "post",
#       name: "post",
#       data: %ThatApp.Blogs.Post{
#         __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#         id: "cfff6258-bb87-4939-b53e-0488924628df",
#         description: "one",
#         title: "one",
#         tags: "one",
#         user_id: nil,
#         inserted_at: ~U[2024-05-20 09:19:22Z],
#         updated_at: ~U[2024-05-20 09:19:22Z]
#       },
#       action: :validate,
#       hidden: [id: "cfff6258-bb87-4939-b53e-0488924628df"],
#       params: %{"description" => "one", "tags" => "one", "title" => "one "},
#       errors: [],
#       options: [method: "put"],
#       index: nil
#     }
#   },
#   flash: %{},
#   myself: %Phoenix.LiveComponent.CID{cid: 2}
# }
# ================= this is handle event validate post  =================
# [debug] HANDLE EVENT "validate" in ThatAppWeb.PostLive.Index
#   Component: ThatAppWeb.PostLive.FormComponent
#   Parameters: %{"_target" => ["post", "title"], "post" => %{"description" => "one", "tags" => "one", "title" => "one ed"}}
# %{"description" => "one", "tags" => "one", "title" => "one ed"}
# #Phoenix.LiveView.Socket<
#   id: "phx-F9EnqL2W0Wdi3gIB",
#   endpoint: ThatAppWeb.Endpoint,
#   view: ThatAppWeb.PostLive.Index,
#   parent_pid: nil,
#   root_pid: #PID<0.741.0>,
#   router: ThatAppWeb.Router,
#   assigns: %{
#     id: "cfff6258-bb87-4939-b53e-0488924628df",
#     title: "Edit Post",
#     form: %Phoenix.HTML.Form{
#       source: #Ecto.Changeset<
#         action: :validate,
#         changes: %{title: "one e"},
#         errors: [],
#         data: #ThatApp.Blogs.Post<>,
#         valid?: true
#       >,
#       impl: Phoenix.HTML.FormData.Ecto.Changeset,
#       id: "post",
#       name: "post",
#       data: %ThatApp.Blogs.Post{
#         __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#         id: "cfff6258-bb87-4939-b53e-0488924628df",
#         description: "one",
#         title: "one",
#         tags: "one",
#         user_id: nil,
#         inserted_at: ~U[2024-05-20 09:19:22Z],
#         updated_at: ~U[2024-05-20 09:19:22Z]
#       },
#       action: :validate,
#       hidden: [id: "cfff6258-bb87-4939-b53e-0488924628df"],
#       params: %{"description" => "one", "tags" => "one", "title" => "one e"},
#       errors: [],
#       options: [method: "put"],
#       index: nil
#     },
#     action: :edit,
#     post: %ThatApp.Blogs.Post{
#       __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#       id: "cfff6258-bb87-4939-b53e-0488924628df",
#       description: "one",
#       title: "one",
#       tags: "one",
#       user_id: nil,
#       inserted_at: ~U[2024-05-20 09:19:22Z],
#       updated_at: ~U[2024-05-20 09:19:22Z]
#     },
#     patch: "/posts",
#     __changed__: %{},
#     flash: %{},
#     myself: %Phoenix.LiveComponent.CID{cid: 2}
#   },
#   transport_pid: #PID<0.727.0>,
#   ...
# >
# ================= this is assign_form post =================
# #Ecto.Changeset<
#   action: :validate,
#   changes: %{title: "one ed"},
#   errors: [],
#   data: #ThatApp.Blogs.Post<>,
#   valid?: true
# >
# #Phoenix.LiveView.Socket<
#   id: "phx-F9EnqL2W0Wdi3gIB",
#   endpoint: ThatAppWeb.Endpoint,
#   view: ThatAppWeb.PostLive.Index,
#   parent_pid: nil,
#   root_pid: #PID<0.741.0>,
#   router: ThatAppWeb.Router,
#   assigns: %{
#     id: "cfff6258-bb87-4939-b53e-0488924628df",
#     title: "Edit Post",
#     form: %Phoenix.HTML.Form{
#       source: #Ecto.Changeset<
#         action: :validate,
#         changes: %{title: "one e"},
#         errors: [],
#         data: #ThatApp.Blogs.Post<>,
#         valid?: true
#       >,
#       impl: Phoenix.HTML.FormData.Ecto.Changeset,
#       id: "post",
#       name: "post",
#       data: %ThatApp.Blogs.Post{
#         __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#         id: "cfff6258-bb87-4939-b53e-0488924628df",
#         description: "one",
#         title: "one",
#         tags: "one",
#         user_id: nil,
#         inserted_at: ~U[2024-05-20 09:19:22Z],
#         updated_at: ~U[2024-05-20 09:19:22Z]
#       },
#       action: :validate,
#       hidden: [id: "cfff6258-bb87-4939-b53e-0488924628df"],
#       params: %{"description" => "one", "tags" => "one", "title" => "one e"},
#       errors: [],
#       options: [method: "put"],
#       index: nil
#     },
#     action: :edit,
#     post: %ThatApp.Blogs.Post{
#       __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#       id: "cfff6258-bb87-4939-b53e-0488924628df",
#       description: "one",
#       title: "one",
#       tags: "one",
#       user_id: nil,
#       inserted_at: ~U[2024-05-20 09:19:22Z],
#       updated_at: ~U[2024-05-20 09:19:22Z]
#     },
#     patch: "/posts",
#     __changed__: %{},
#     flash: %{},
#     myself: %Phoenix.LiveComponent.CID{cid: 2}
#   },
#   transport_pid: #PID<0.727.0>,
#   ...
# >
# ================= this is render save post =================
# [debug] Replied in 1ms
# %{
#   id: "cfff6258-bb87-4939-b53e-0488924628df",
#   socket: #Phoenix.LiveView.Socket<
#     id: "phx-F9EnqL2W0Wdi3gIB",
#     endpoint: ThatAppWeb.Endpoint,
#     view: ThatAppWeb.PostLive.Index,
#     parent_pid: nil,
#     root_pid: #PID<0.741.0>,
#     router: ThatAppWeb.Router,
#     assigns: #Phoenix.LiveView.Socket.AssignsNotInSocket<>,
#     transport_pid: #PID<0.727.0>,
#     ...
#   >,
#   title: "Edit Post",
#   form: %Phoenix.HTML.Form{
#     source: #Ecto.Changeset<
#       action: :validate,
#       changes: %{title: "one ed"},
#       errors: [],
#       data: #ThatApp.Blogs.Post<>,
#       valid?: true
#     >,
#     impl: Phoenix.HTML.FormData.Ecto.Changeset,
#     id: "post",
#     name: "post",
#     data: %ThatApp.Blogs.Post{
#       __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#       id: "cfff6258-bb87-4939-b53e-0488924628df",
#       description: "one",
#       title: "one",
#       tags: "one",
#       user_id: nil,
#       inserted_at: ~U[2024-05-20 09:19:22Z],
#       updated_at: ~U[2024-05-20 09:19:22Z]
#     },
#     action: :validate,
#     hidden: [id: "cfff6258-bb87-4939-b53e-0488924628df"],
#     params: %{"description" => "one", "tags" => "one", "title" => "one ed"},
#     errors: [],
#     options: [method: "put"],
#     index: nil
#   },
#   action: :edit,
#   post: %ThatApp.Blogs.Post{
#     __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#     id: "cfff6258-bb87-4939-b53e-0488924628df",
#     description: "one",
#     title: "one",
#     tags: "one",
#     user_id: nil,
#     inserted_at: ~U[2024-05-20 09:19:22Z],
#     updated_at: ~U[2024-05-20 09:19:22Z]
#   },
#   patch: "/posts",
#   __changed__: %{
#     form: %Phoenix.HTML.Form{
#       source: #Ecto.Changeset<
#         action: :validate,
#         changes: %{title: "one e"},
#         errors: [],
#         data: #ThatApp.Blogs.Post<>,
#         valid?: true
#       >,
#       impl: Phoenix.HTML.FormData.Ecto.Changeset,
#       id: "post",
#       name: "post",
#       data: %ThatApp.Blogs.Post{
#         __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#         id: "cfff6258-bb87-4939-b53e-0488924628df",
#         description: "one",
#         title: "one",
#         tags: "one",
#         user_id: nil,
#         inserted_at: ~U[2024-05-20 09:19:22Z],
#         updated_at: ~U[2024-05-20 09:19:22Z]
#       },
#       action: :validate,
#       hidden: [id: "cfff6258-bb87-4939-b53e-0488924628df"],
#       params: %{"description" => "one", "tags" => "one", "title" => "one e"},
#       errors: [],
#       options: [method: "put"],
#       index: nil
#     }
#   },
#   flash: %{},
#   myself: %Phoenix.LiveComponent.CID{cid: 2}
# }
# ================= this is handle event validate post  =================
# [debug] HANDLE EVENT "validate" in ThatAppWeb.PostLive.Index
#   Component: ThatAppWeb.PostLive.FormComponent
#   Parameters: %{"_target" => ["post", "title"], "post" => %{"description" => "one", "tags" => "one", "title" => "one edi"}}
# %{"description" => "one", "tags" => "one", "title" => "one edi"}
# #Phoenix.LiveView.Socket<
#   id: "phx-F9EnqL2W0Wdi3gIB",
#   endpoint: ThatAppWeb.Endpoint,
#   view: ThatAppWeb.PostLive.Index,
#   parent_pid: nil,
#   root_pid: #PID<0.741.0>,
#   router: ThatAppWeb.Router,
#   assigns: %{
#     id: "cfff6258-bb87-4939-b53e-0488924628df",
#     title: "Edit Post",
#     form: %Phoenix.HTML.Form{
#       source: #Ecto.Changeset<
#         action: :validate,
#         changes: %{title: "one ed"},
#         errors: [],
#         data: #ThatApp.Blogs.Post<>,
#         valid?: true
#       >,
#       impl: Phoenix.HTML.FormData.Ecto.Changeset,
#       id: "post",
#       name: "post",
#       data: %ThatApp.Blogs.Post{
#         __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#         id: "cfff6258-bb87-4939-b53e-0488924628df",
#         description: "one",
#         title: "one",
#         tags: "one",
#         user_id: nil,
#         inserted_at: ~U[2024-05-20 09:19:22Z],
#         updated_at: ~U[2024-05-20 09:19:22Z]
#       },
#       action: :validate,
#       hidden: [id: "cfff6258-bb87-4939-b53e-0488924628df"],
#       params: %{"description" => "one", "tags" => "one", "title" => "one ed"},
#       errors: [],
#       options: [method: "put"],
#       index: nil
#     },
#     action: :edit,
#     post: %ThatApp.Blogs.Post{
#       __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#       id: "cfff6258-bb87-4939-b53e-0488924628df",
#       description: "one",
#       title: "one",
#       tags: "one",
#       user_id: nil,
#       inserted_at: ~U[2024-05-20 09:19:22Z],
#       updated_at: ~U[2024-05-20 09:19:22Z]
#     },
#     patch: "/posts",
#     __changed__: %{},
#     flash: %{},
#     myself: %Phoenix.LiveComponent.CID{cid: 2}
#   },
#   transport_pid: #PID<0.727.0>,
#   ...
# >
# ================= this is assign_form post =================
# #Ecto.Changeset<
#   action: :validate,
#   changes: %{title: "one edi"},
#   errors: [],
#   data: #ThatApp.Blogs.Post<>,
#   valid?: true
# >
# #Phoenix.LiveView.Socket<
#   id: "phx-F9EnqL2W0Wdi3gIB",
#   endpoint: ThatAppWeb.Endpoint,
#   view: ThatAppWeb.PostLive.Index,
#   parent_pid: nil,
#   root_pid: #PID<0.741.0>,
#   router: ThatAppWeb.Router,
#   assigns: %{
#     id: "cfff6258-bb87-4939-b53e-0488924628df",
#     title: "Edit Post",
#     form: %Phoenix.HTML.Form{
#       source: #Ecto.Changeset<
#         action: :validate,
#         changes: %{title: "one ed"},
#         errors: [],
#         data: #ThatApp.Blogs.Post<>,
#         valid?: true
#       >,
#       impl: Phoenix.HTML.FormData.Ecto.Changeset,
#       id: "post",
#       name: "post",
#       data: %ThatApp.Blogs.Post{
#         __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#         id: "cfff6258-bb87-4939-b53e-0488924628df",
#         description: "one",
#         title: "one",
#         tags: "one",
#         user_id: nil,
#         inserted_at: ~U[2024-05-20 09:19:22Z],
#         updated_at: ~U[2024-05-20 09:19:22Z]
#       },
#       action: :validate,
#       hidden: [id: "cfff6258-bb87-4939-b53e-0488924628df"],
#       params: %{"description" => "one", "tags" => "one", "title" => "one ed"},
#       errors: [],
#       options: [method: "put"],
#       index: nil
#     },
#     action: :edit,
#     post: %ThatApp.Blogs.Post{
#       __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#       id: "cfff6258-bb87-4939-b53e-0488924628df",
#       description: "one",
#       title: "one",
#       tags: "one",
#       user_id: nil,
#       inserted_at: ~U[2024-05-20 09:19:22Z],
#       updated_at: ~U[2024-05-20 09:19:22Z]
#     },
#     patch: "/posts",
#     __changed__: %{},
#     flash: %{},
#     myself: %Phoenix.LiveComponent.CID{cid: 2}
#   },
#   transport_pid: #PID<0.727.0>,
#   ...
# >
# ================= this is render save post =================
# [debug] Replied in 1ms
# %{
#   id: "cfff6258-bb87-4939-b53e-0488924628df",
#   socket: #Phoenix.LiveView.Socket<
#     id: "phx-F9EnqL2W0Wdi3gIB",
#     endpoint: ThatAppWeb.Endpoint,
#     view: ThatAppWeb.PostLive.Index,
#     parent_pid: nil,
#     root_pid: #PID<0.741.0>,
#     router: ThatAppWeb.Router,
#     assigns: #Phoenix.LiveView.Socket.AssignsNotInSocket<>,
#     transport_pid: #PID<0.727.0>,
#     ...
#   >,
#   title: "Edit Post",
#   form: %Phoenix.HTML.Form{
#     source: #Ecto.Changeset<
#       action: :validate,
#       changes: %{title: "one edi"},
#       errors: [],
#       data: #ThatApp.Blogs.Post<>,
#       valid?: true
#     >,
#     impl: Phoenix.HTML.FormData.Ecto.Changeset,
#     id: "post",
#     name: "post",
#     data: %ThatApp.Blogs.Post{
#       __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#       id: "cfff6258-bb87-4939-b53e-0488924628df",
#       description: "one",
#       title: "one",
#       tags: "one",
#       user_id: nil,
#       inserted_at: ~U[2024-05-20 09:19:22Z],
#       updated_at: ~U[2024-05-20 09:19:22Z]
#     },
#     action: :validate,
#     hidden: [id: "cfff6258-bb87-4939-b53e-0488924628df"],
#     params: %{"description" => "one", "tags" => "one", "title" => "one edi"},
#     errors: [],
#     options: [method: "put"],
#     index: nil
#   },
#   action: :edit,
#   post: %ThatApp.Blogs.Post{
#     __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#     id: "cfff6258-bb87-4939-b53e-0488924628df",
#     description: "one",
#     title: "one",
#     tags: "one",
#     user_id: nil,
#     inserted_at: ~U[2024-05-20 09:19:22Z],
#     updated_at: ~U[2024-05-20 09:19:22Z]
#   },
#   patch: "/posts",
#   __changed__: %{
#     form: %Phoenix.HTML.Form{
#       source: #Ecto.Changeset<
#         action: :validate,
#         changes: %{title: "one ed"},
#         errors: [],
#         data: #ThatApp.Blogs.Post<>,
#         valid?: true
#       >,
#       impl: Phoenix.HTML.FormData.Ecto.Changeset,
#       id: "post",
#       name: "post",
#       data: %ThatApp.Blogs.Post{
#         __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#         id: "cfff6258-bb87-4939-b53e-0488924628df",
#         description: "one",
#         title: "one",
#         tags: "one",
#         user_id: nil,
#         inserted_at: ~U[2024-05-20 09:19:22Z],
#         updated_at: ~U[2024-05-20 09:19:22Z]
#       },
#       action: :validate,
#       hidden: [id: "cfff6258-bb87-4939-b53e-0488924628df"],
#       params: %{"description" => "one", "tags" => "one", "title" => "one ed"},
#       errors: [],
#       options: [method: "put"],
#       index: nil
#     }
#   },
#   flash: %{},
#   myself: %Phoenix.LiveComponent.CID{cid: 2}
# }
# ================= this is handle event validate post  =================
# [debug] HANDLE EVENT "validate" in ThatAppWeb.PostLive.Index
#   Component: ThatAppWeb.PostLive.FormComponent
#   Parameters: %{"_target" => ["post", "title"], "post" => %{"description" => "one", "tags" => "one", "title" => "one edit"}}
# %{"description" => "one", "tags" => "one", "title" => "one edit"}
# #Phoenix.LiveView.Socket<
#   id: "phx-F9EnqL2W0Wdi3gIB",
#   endpoint: ThatAppWeb.Endpoint,
#   view: ThatAppWeb.PostLive.Index,
#   parent_pid: nil,
#   root_pid: #PID<0.741.0>,
#   router: ThatAppWeb.Router,
#   assigns: %{
#     id: "cfff6258-bb87-4939-b53e-0488924628df",
#     title: "Edit Post",
#     form: %Phoenix.HTML.Form{
#       source: #Ecto.Changeset<
#         action: :validate,
#         changes: %{title: "one edi"},
#         errors: [],
#         data: #ThatApp.Blogs.Post<>,
#         valid?: true
#       >,
#       impl: Phoenix.HTML.FormData.Ecto.Changeset,
#       id: "post",
#       name: "post",
#       data: %ThatApp.Blogs.Post{
#         __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#         id: "cfff6258-bb87-4939-b53e-0488924628df",
#         description: "one",
#         title: "one",
#         tags: "one",
#         user_id: nil,
#         inserted_at: ~U[2024-05-20 09:19:22Z],
#         updated_at: ~U[2024-05-20 09:19:22Z]
#       },
#       action: :validate,
#       hidden: [id: "cfff6258-bb87-4939-b53e-0488924628df"],
#       params: %{"description" => "one", "tags" => "one", "title" => "one edi"},
#       errors: [],
#       options: [method: "put"],
#       index: nil
#     },
#     action: :edit,
#     post: %ThatApp.Blogs.Post{
#       __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#       id: "cfff6258-bb87-4939-b53e-0488924628df",
#       description: "one",
#       title: "one",
#       tags: "one",
#       user_id: nil,
#       inserted_at: ~U[2024-05-20 09:19:22Z],
#       updated_at: ~U[2024-05-20 09:19:22Z]
#     },
#     patch: "/posts",
#     __changed__: %{},
#     flash: %{},
#     myself: %Phoenix.LiveComponent.CID{cid: 2}
#   },
#   transport_pid: #PID<0.727.0>,
#   ...
# >
# ================= this is assign_form post =================
# #Ecto.Changeset<
#   action: :validate,
#   changes: %{title: "one edit"},
#   errors: [],
#   data: #ThatApp.Blogs.Post<>,
#   valid?: true
# >
# #Phoenix.LiveView.Socket<
#   id: "phx-F9EnqL2W0Wdi3gIB",
#   endpoint: ThatAppWeb.Endpoint,
#   view: ThatAppWeb.PostLive.Index,
#   parent_pid: nil,
#   root_pid: #PID<0.741.0>,
#   router: ThatAppWeb.Router,
#   assigns: %{
#     id: "cfff6258-bb87-4939-b53e-0488924628df",
#     title: "Edit Post",
#     form: %Phoenix.HTML.Form{
#       source: #Ecto.Changeset<
#         action: :validate,
#         changes: %{title: "one edi"},
#         errors: [],
#         data: #ThatApp.Blogs.Post<>,
#         valid?: true
#       >,
#       impl: Phoenix.HTML.FormData.Ecto.Changeset,
#       id: "post",
#       name: "post",
#       data: %ThatApp.Blogs.Post{
#         __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#         id: "cfff6258-bb87-4939-b53e-0488924628df",
#         description: "one",
#         title: "one",
#         tags: "one",
#         user_id: nil,
#         inserted_at: ~U[2024-05-20 09:19:22Z],
#         updated_at: ~U[2024-05-20 09:19:22Z]
#       },
#       action: :validate,
#       hidden: [id: "cfff6258-bb87-4939-b53e-0488924628df"],
#       params: %{"description" => "one", "tags" => "one", "title" => "one edi"},
#       errors: [],
#       options: [method: "put"],
#       index: nil
#     },
#     action: :edit,
#     post: %ThatApp.Blogs.Post{
#       __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#       id: "cfff6258-bb87-4939-b53e-0488924628df",
#       description: "one",
#       title: "one",
#       tags: "one",
#       user_id: nil,
#       inserted_at: ~U[2024-05-20 09:19:22Z],
#       updated_at: ~U[2024-05-20 09:19:22Z]
#     },
#     patch: "/posts",
#     __changed__: %{},
#     flash: %{},
#     myself: %Phoenix.LiveComponent.CID{cid: 2}
#   },
#   transport_pid: #PID<0.727.0>,
#   ...
# >
# ================= this is render save post =================
# [debug] Replied in 2ms
# %{
#   id: "cfff6258-bb87-4939-b53e-0488924628df",
#   socket: #Phoenix.LiveView.Socket<
#     id: "phx-F9EnqL2W0Wdi3gIB",
#     endpoint: ThatAppWeb.Endpoint,
#     view: ThatAppWeb.PostLive.Index,
#     parent_pid: nil,
#     root_pid: #PID<0.741.0>,
#     router: ThatAppWeb.Router,
#     assigns: #Phoenix.LiveView.Socket.AssignsNotInSocket<>,
#     transport_pid: #PID<0.727.0>,
#     ...
#   >,
#   title: "Edit Post",
#   form: %Phoenix.HTML.Form{
#     source: #Ecto.Changeset<
#       action: :validate,
#       changes: %{title: "one edit"},
#       errors: [],
#       data: #ThatApp.Blogs.Post<>,
#       valid?: true
#     >,
#     impl: Phoenix.HTML.FormData.Ecto.Changeset,
#     id: "post",
#     name: "post",
#     data: %ThatApp.Blogs.Post{
#       __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#       id: "cfff6258-bb87-4939-b53e-0488924628df",
#       description: "one",
#       title: "one",
#       tags: "one",
#       user_id: nil,
#       inserted_at: ~U[2024-05-20 09:19:22Z],
#       updated_at: ~U[2024-05-20 09:19:22Z]
#     },
#     action: :validate,
#     hidden: [id: "cfff6258-bb87-4939-b53e-0488924628df"],
#     params: %{"description" => "one", "tags" => "one", "title" => "one edit"},
#     errors: [],
#     options: [method: "put"],
#     index: nil
#   },
#   action: :edit,
#   post: %ThatApp.Blogs.Post{
#     __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#     id: "cfff6258-bb87-4939-b53e-0488924628df",
#     description: "one",
#     title: "one",
#     tags: "one",
#     user_id: nil,
#     inserted_at: ~U[2024-05-20 09:19:22Z],
#     updated_at: ~U[2024-05-20 09:19:22Z]
#   },
#   patch: "/posts",
#   __changed__: %{
#     form: %Phoenix.HTML.Form{
#       source: #Ecto.Changeset<
#         action: :validate,
#         changes: %{title: "one edi"},
#         errors: [],
#         data: #ThatApp.Blogs.Post<>,
#         valid?: true
#       >,
#       impl: Phoenix.HTML.FormData.Ecto.Changeset,
#       id: "post",
#       name: "post",
#       data: %ThatApp.Blogs.Post{
#         __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#         id: "cfff6258-bb87-4939-b53e-0488924628df",
#         description: "one",
#         title: "one",
#         tags: "one",
#         user_id: nil,
#         inserted_at: ~U[2024-05-20 09:19:22Z],
#         updated_at: ~U[2024-05-20 09:19:22Z]
#       },
#       action: :validate,
#       hidden: [id: "cfff6258-bb87-4939-b53e-0488924628df"],
#       params: %{"description" => "one", "tags" => "one", "title" => "one edi"},
#       errors: [],
#       options: [method: "put"],
#       index: nil
#     }
#   },
#   flash: %{},
#   myself: %Phoenix.LiveComponent.CID{cid: 2}
# }
# ================= this is handle event validate post  =================
# [debug] HANDLE EVENT "validate" in ThatAppWeb.PostLive.Index
#   Component: ThatAppWeb.PostLive.FormComponent
#   Parameters: %{"_target" => ["post", "title"], "post" => %{"description" => "one", "tags" => "one", "title" => "one edite"}}
# %{"description" => "one", "tags" => "one", "title" => "one edite"}
# #Phoenix.LiveView.Socket<
#   id: "phx-F9EnqL2W0Wdi3gIB",
#   endpoint: ThatAppWeb.Endpoint,
#   view: ThatAppWeb.PostLive.Index,
#   parent_pid: nil,
#   root_pid: #PID<0.741.0>,
#   router: ThatAppWeb.Router,
#   assigns: %{
#     id: "cfff6258-bb87-4939-b53e-0488924628df",
#     title: "Edit Post",
#     form: %Phoenix.HTML.Form{
#       source: #Ecto.Changeset<
#         action: :validate,
#         changes: %{title: "one edit"},
#         errors: [],
#         data: #ThatApp.Blogs.Post<>,
#         valid?: true
#       >,
#       impl: Phoenix.HTML.FormData.Ecto.Changeset,
#       id: "post",
#       name: "post",
#       data: %ThatApp.Blogs.Post{
#         __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#         id: "cfff6258-bb87-4939-b53e-0488924628df",
#         description: "one",
#         title: "one",
#         tags: "one",
#         user_id: nil,
#         inserted_at: ~U[2024-05-20 09:19:22Z],
#         updated_at: ~U[2024-05-20 09:19:22Z]
#       },
#       action: :validate,
#       hidden: [id: "cfff6258-bb87-4939-b53e-0488924628df"],
#       params: %{"description" => "one", "tags" => "one", "title" => "one edit"},
#       errors: [],
#       options: [method: "put"],
#       index: nil
#     },
#     action: :edit,
#     post: %ThatApp.Blogs.Post{
#       __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#       id: "cfff6258-bb87-4939-b53e-0488924628df",
#       description: "one",
#       title: "one",
#       tags: "one",
#       user_id: nil,
#       inserted_at: ~U[2024-05-20 09:19:22Z],
#       updated_at: ~U[2024-05-20 09:19:22Z]
#     },
#     patch: "/posts",
#     __changed__: %{},
#     flash: %{},
#     myself: %Phoenix.LiveComponent.CID{cid: 2}
#   },
#   transport_pid: #PID<0.727.0>,
#   ...
# >
# ================= this is assign_form post =================
# #Ecto.Changeset<
#   action: :validate,
#   changes: %{title: "one edite"},
#   errors: [],
#   data: #ThatApp.Blogs.Post<>,
#   valid?: true
# >
# #Phoenix.LiveView.Socket<
#   id: "phx-F9EnqL2W0Wdi3gIB",
#   endpoint: ThatAppWeb.Endpoint,
#   view: ThatAppWeb.PostLive.Index,
#   parent_pid: nil,
#   root_pid: #PID<0.741.0>,
#   router: ThatAppWeb.Router,
#   assigns: %{
#     id: "cfff6258-bb87-4939-b53e-0488924628df",
#     title: "Edit Post",
#     form: %Phoenix.HTML.Form{
#       source: #Ecto.Changeset<
#         action: :validate,
#         changes: %{title: "one edit"},
#         errors: [],
#         data: #ThatApp.Blogs.Post<>,
#         valid?: true
#       >,
#       impl: Phoenix.HTML.FormData.Ecto.Changeset,
#       id: "post",
#       name: "post",
#       data: %ThatApp.Blogs.Post{
#         __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#         id: "cfff6258-bb87-4939-b53e-0488924628df",
#         description: "one",
#         title: "one",
#         tags: "one",
#         user_id: nil,
#         inserted_at: ~U[2024-05-20 09:19:22Z],
#         updated_at: ~U[2024-05-20 09:19:22Z]
#       },
#       action: :validate,
#       hidden: [id: "cfff6258-bb87-4939-b53e-0488924628df"],
#       params: %{"description" => "one", "tags" => "one", "title" => "one edit"},
#       errors: [],
#       options: [method: "put"],
#       index: nil
#     },
#     action: :edit,
#     post: %ThatApp.Blogs.Post{
#       __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#       id: "cfff6258-bb87-4939-b53e-0488924628df",
#       description: "one",
#       title: "one",
#       tags: "one",
#       user_id: nil,
#       inserted_at: ~U[2024-05-20 09:19:22Z],
#       updated_at: ~U[2024-05-20 09:19:22Z]
#     },
#     patch: "/posts",
#     __changed__: %{},
#     flash: %{},
#     myself: %Phoenix.LiveComponent.CID{cid: 2}
#   },
#   transport_pid: #PID<0.727.0>,
#   ...
# >
# ================= this is render save post =================
# [debug] Replied in 1ms
# %{
#   id: "cfff6258-bb87-4939-b53e-0488924628df",
#   socket: #Phoenix.LiveView.Socket<
#     id: "phx-F9EnqL2W0Wdi3gIB",
#     endpoint: ThatAppWeb.Endpoint,
#     view: ThatAppWeb.PostLive.Index,
#     parent_pid: nil,
#     root_pid: #PID<0.741.0>,
#     router: ThatAppWeb.Router,
#     assigns: #Phoenix.LiveView.Socket.AssignsNotInSocket<>,
#     transport_pid: #PID<0.727.0>,
#     ...
#   >,
#   title: "Edit Post",
#   form: %Phoenix.HTML.Form{
#     source: #Ecto.Changeset<
#       action: :validate,
#       changes: %{title: "one edite"},
#       errors: [],
#       data: #ThatApp.Blogs.Post<>,
#       valid?: true
#     >,
#     impl: Phoenix.HTML.FormData.Ecto.Changeset,
#     id: "post",
#     name: "post",
#     data: %ThatApp.Blogs.Post{
#       __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#       id: "cfff6258-bb87-4939-b53e-0488924628df",
#       description: "one",
#       title: "one",
#       tags: "one",
#       user_id: nil,
#       inserted_at: ~U[2024-05-20 09:19:22Z],
#       updated_at: ~U[2024-05-20 09:19:22Z]
#     },
#     action: :validate,
#     hidden: [id: "cfff6258-bb87-4939-b53e-0488924628df"],
#     params: %{"description" => "one", "tags" => "one", "title" => "one edite"},
#     errors: [],
#     options: [method: "put"],
#     index: nil
#   },
#   action: :edit,
#   post: %ThatApp.Blogs.Post{
#     __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#     id: "cfff6258-bb87-4939-b53e-0488924628df",
#     description: "one",
#     title: "one",
#     tags: "one",
#     user_id: nil,
#     inserted_at: ~U[2024-05-20 09:19:22Z],
#     updated_at: ~U[2024-05-20 09:19:22Z]
#   },
#   patch: "/posts",
#   __changed__: %{
#     form: %Phoenix.HTML.Form{
#       source: #Ecto.Changeset<
#         action: :validate,
#         changes: %{title: "one edit"},
#         errors: [],
#         data: #ThatApp.Blogs.Post<>,
#         valid?: true
#       >,
#       impl: Phoenix.HTML.FormData.Ecto.Changeset,
#       id: "post",
#       name: "post",
#       data: %ThatApp.Blogs.Post{
#         __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#         id: "cfff6258-bb87-4939-b53e-0488924628df",
#         description: "one",
#         title: "one",
#         tags: "one",
#         user_id: nil,
#         inserted_at: ~U[2024-05-20 09:19:22Z],
#         updated_at: ~U[2024-05-20 09:19:22Z]
#       },
#       action: :validate,
#       hidden: [id: "cfff6258-bb87-4939-b53e-0488924628df"],
#       params: %{"description" => "one", "tags" => "one", "title" => "one edit"},
#       errors: [],
#       options: [method: "put"],
#       index: nil
#     }
#   },
#   flash: %{},
#   myself: %Phoenix.LiveComponent.CID{cid: 2}
# }
# ================= this is handle event validate post  =================
# [debug] HANDLE EVENT "validate" in ThatAppWeb.PostLive.Index
#   Component: ThatAppWeb.PostLive.FormComponent
#   Parameters: %{"_target" => ["post", "title"], "post" => %{"description" => "one", "tags" => "one", "title" => "one edited"}}
# %{"description" => "one", "tags" => "one", "title" => "one edited"}
# #Phoenix.LiveView.Socket<
#   id: "phx-F9EnqL2W0Wdi3gIB",
#   endpoint: ThatAppWeb.Endpoint,
#   view: ThatAppWeb.PostLive.Index,
#   parent_pid: nil,
#   root_pid: #PID<0.741.0>,
#   router: ThatAppWeb.Router,
#   assigns: %{
#     id: "cfff6258-bb87-4939-b53e-0488924628df",
#     title: "Edit Post",
#     form: %Phoenix.HTML.Form{
#       source: #Ecto.Changeset<
#         action: :validate,
#         changes: %{title: "one edite"},
#         errors: [],
#         data: #ThatApp.Blogs.Post<>,
#         valid?: true
#       >,
#       impl: Phoenix.HTML.FormData.Ecto.Changeset,
#       id: "post",
#       name: "post",
#       data: %ThatApp.Blogs.Post{
#         __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#         id: "cfff6258-bb87-4939-b53e-0488924628df",
#         description: "one",
#         title: "one",
#         tags: "one",
#         user_id: nil,
#         inserted_at: ~U[2024-05-20 09:19:22Z],
#         updated_at: ~U[2024-05-20 09:19:22Z]
#       },
#       action: :validate,
#       hidden: [id: "cfff6258-bb87-4939-b53e-0488924628df"],
#       params: %{"description" => "one", "tags" => "one", "title" => "one edite"},
#       errors: [],
#       options: [method: "put"],
#       index: nil
#     },
#     action: :edit,
#     post: %ThatApp.Blogs.Post{
#       __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#       id: "cfff6258-bb87-4939-b53e-0488924628df",
#       description: "one",
#       title: "one",
#       tags: "one",
#       user_id: nil,
#       inserted_at: ~U[2024-05-20 09:19:22Z],
#       updated_at: ~U[2024-05-20 09:19:22Z]
#     },
#     patch: "/posts",
#     __changed__: %{},
#     flash: %{},
#     myself: %Phoenix.LiveComponent.CID{cid: 2}
#   },
#   transport_pid: #PID<0.727.0>,
#   ...
# >
# ================= this is assign_form post =================
# #Ecto.Changeset<
#   action: :validate,
#   changes: %{title: "one edited"},
#   errors: [],
#   data: #ThatApp.Blogs.Post<>,
#   valid?: true
# >
# #Phoenix.LiveView.Socket<
#   id: "phx-F9EnqL2W0Wdi3gIB",
#   endpoint: ThatAppWeb.Endpoint,
#   view: ThatAppWeb.PostLive.Index,
#   parent_pid: nil,
#   root_pid: #PID<0.741.0>,
#   router: ThatAppWeb.Router,
#   assigns: %{
#     id: "cfff6258-bb87-4939-b53e-0488924628df",
#     title: "Edit Post",
#     form: %Phoenix.HTML.Form{
#       source: #Ecto.Changeset<
#         action: :validate,
#         changes: %{title: "one edite"},
#         errors: [],
#         data: #ThatApp.Blogs.Post<>,
#         valid?: true
#       >,
#       impl: Phoenix.HTML.FormData.Ecto.Changeset,
#       id: "post",
#       name: "post",
#       data: %ThatApp.Blogs.Post{
#         __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#         id: "cfff6258-bb87-4939-b53e-0488924628df",
#         description: "one",
#         title: "one",
#         tags: "one",
#         user_id: nil,
#         inserted_at: ~U[2024-05-20 09:19:22Z],
#         updated_at: ~U[2024-05-20 09:19:22Z]
#       },
#       action: :validate,
#       hidden: [id: "cfff6258-bb87-4939-b53e-0488924628df"],
#       params: %{"description" => "one", "tags" => "one", "title" => "one edite"},
#       errors: [],
#       options: [method: "put"],
#       index: nil
#     },
#     action: :edit,
#     post: %ThatApp.Blogs.Post{
#       __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#       id: "cfff6258-bb87-4939-b53e-0488924628df",
#       description: "one",
#       title: "one",
#       tags: "one",
#       user_id: nil,
#       inserted_at: ~U[2024-05-20 09:19:22Z],
#       updated_at: ~U[2024-05-20 09:19:22Z]
#     },
#     patch: "/posts",
#     __changed__: %{},
#     flash: %{},
#     myself: %Phoenix.LiveComponent.CID{cid: 2}
#   },
#   transport_pid: #PID<0.727.0>,
#   ...
# >
# ================= this is render save post =================
# [debug] Replied in 1ms
# %{
#   id: "cfff6258-bb87-4939-b53e-0488924628df",
#   socket: #Phoenix.LiveView.Socket<
#     id: "phx-F9EnqL2W0Wdi3gIB",
#     endpoint: ThatAppWeb.Endpoint,
#     view: ThatAppWeb.PostLive.Index,
#     parent_pid: nil,
#     root_pid: #PID<0.741.0>,
#     router: ThatAppWeb.Router,
#     assigns: #Phoenix.LiveView.Socket.AssignsNotInSocket<>,
#     transport_pid: #PID<0.727.0>,
#     ...
#   >,
#   title: "Edit Post",
#   form: %Phoenix.HTML.Form{
#     source: #Ecto.Changeset<
#       action: :validate,
#       changes: %{title: "one edited"},
#       errors: [],
#       data: #ThatApp.Blogs.Post<>,
#       valid?: true
#     >,
#     impl: Phoenix.HTML.FormData.Ecto.Changeset,
#     id: "post",
#     name: "post",
#     data: %ThatApp.Blogs.Post{
#       __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#       id: "cfff6258-bb87-4939-b53e-0488924628df",
#       description: "one",
#       title: "one",
#       tags: "one",
#       user_id: nil,
#       inserted_at: ~U[2024-05-20 09:19:22Z],
#       updated_at: ~U[2024-05-20 09:19:22Z]
#     },
#     action: :validate,
#     hidden: [id: "cfff6258-bb87-4939-b53e-0488924628df"],
#     params: %{"description" => "one", "tags" => "one", "title" => "one edited"},
#     errors: [],
#     options: [method: "put"],
#     index: nil
#   },
#   action: :edit,
#   post: %ThatApp.Blogs.Post{
#     __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#     id: "cfff6258-bb87-4939-b53e-0488924628df",
#     description: "one",
#     title: "one",
#     tags: "one",
#     user_id: nil,
#     inserted_at: ~U[2024-05-20 09:19:22Z],
#     updated_at: ~U[2024-05-20 09:19:22Z]
#   },
#   patch: "/posts",
#   __changed__: %{
#     form: %Phoenix.HTML.Form{
#       source: #Ecto.Changeset<
#         action: :validate,
#         changes: %{title: "one edite"},
#         errors: [],
#         data: #ThatApp.Blogs.Post<>,
#         valid?: true
#       >,
#       impl: Phoenix.HTML.FormData.Ecto.Changeset,
#       id: "post",
#       name: "post",
#       data: %ThatApp.Blogs.Post{
#         __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#         id: "cfff6258-bb87-4939-b53e-0488924628df",
#         description: "one",
#         title: "one",
#         tags: "one",
#         user_id: nil,
#         inserted_at: ~U[2024-05-20 09:19:22Z],
#         updated_at: ~U[2024-05-20 09:19:22Z]
#       },
#       action: :validate,
#       hidden: [id: "cfff6258-bb87-4939-b53e-0488924628df"],
#       params: %{"description" => "one", "tags" => "one", "title" => "one edite"},
#       errors: [],
#       options: [method: "put"],
#       index: nil
#     }
#   },
#   flash: %{},
#   myself: %Phoenix.LiveComponent.CID{cid: 2}
# }
# ================= this is handle_event save post =================
# [debug] HANDLE EVENT "save" in ThatAppWeb.PostLive.Index
#   Component: ThatAppWeb.PostLive.FormComponent
#   Parameters: %{"post" => %{"description" => "one", "tags" => "one", "title" => "one edited"}}
# %{"description" => "one", "tags" => "one", "title" => "one edited"}
# #Phoenix.LiveView.Socket<
#   id: "phx-F9EnqL2W0Wdi3gIB",
#   endpoint: ThatAppWeb.Endpoint,
#   view: ThatAppWeb.PostLive.Index,
#   parent_pid: nil,
#   root_pid: #PID<0.741.0>,
#   router: ThatAppWeb.Router,
#   assigns: %{
#     id: "cfff6258-bb87-4939-b53e-0488924628df",
#     title: "Edit Post",
#     form: %Phoenix.HTML.Form{
#       source: #Ecto.Changeset<
#         action: :validate,
#         changes: %{title: "one edited"},
#         errors: [],
#         data: #ThatApp.Blogs.Post<>,
#         valid?: true
#       >,
#       impl: Phoenix.HTML.FormData.Ecto.Changeset,
#       id: "post",
#       name: "post",
#       data: %ThatApp.Blogs.Post{
#         __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#         id: "cfff6258-bb87-4939-b53e-0488924628df",
#         description: "one",
#         title: "one",
#         tags: "one",
#         user_id: nil,
#         inserted_at: ~U[2024-05-20 09:19:22Z],
#         updated_at: ~U[2024-05-20 09:19:22Z]
#       },
#       action: :validate,
#       hidden: [id: "cfff6258-bb87-4939-b53e-0488924628df"],
#       params: %{
#         "description" => "one",
#         "tags" => "one",
#         "title" => "one edited"
#       },
#       errors: [],
#       options: [method: "put"],
#       index: nil
#     },
#     action: :edit,
#     post: %ThatApp.Blogs.Post{
#       __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#       id: "cfff6258-bb87-4939-b53e-0488924628df",
#       description: "one",
#       title: "one",
#       tags: "one",
#       user_id: nil,
#       inserted_at: ~U[2024-05-20 09:19:22Z],
#       updated_at: ~U[2024-05-20 09:19:22Z]
#     },
#     patch: "/posts",
#     __changed__: %{},
#     flash: %{},
#     myself: %Phoenix.LiveComponent.CID{cid: 2}
#   },
#   transport_pid: #PID<0.727.0>,
#   ...
# >
# ================= this is save_event edit post =================
# [error] GenServer #PID<0.741.0> terminating
# ** (UndefinedFunctionError) function Io.inspect/1 is undefined (module Io is not available)
#     Io.inspect(:edit)
#     (that_app 0.1.0) lib/that_app_web/live/post_live/form_component.ex:70: ThatAppWeb.PostLive.FormComponent.save_post/3
#     (phoenix_live_view 0.20.14) lib/phoenix_live_view/channel.ex:734: anonymous fn/4 in Phoenix.LiveView.Channel.inner_component_handle_event/4
#     (telemetry 1.2.1) /home/liar/liars/that_app/deps/telemetry/src/telemetry.erl:321: :telemetry.span/3
#     (phoenix_live_view 0.20.14) lib/phoenix_live_view/diff.ex:209: Phoenix.LiveView.Diff.write_component/4
#     (phoenix_live_view 0.20.14) lib/phoenix_live_view/channel.ex:661: Phoenix.LiveView.Channel.component_handle/4
#     (stdlib 5.2.3) gen_server.erl:1095: :gen_server.try_handle_info/3
#     (stdlib 5.2.3) gen_server.erl:1183: :gen_server.handle_msg/6
#     (stdlib 5.2.3) proc_lib.erl:251: :proc_lib.wake_up/3
# Last message: %Phoenix.Socket.Message{topic: "lv:phx-F9EnqL2W0Wdi3gIB", event: "event", payload: %{"cid" => 2, "event" => "save", "type" => "form", "value" => "post%5Btitle%5D=one+edited&post%5Btags%5D=one&post%5Bdescription%5D=one"}, ref: "157", join_ref: "135"}
# State: %{socket: #Phoenix.LiveView.Socket<id: "phx-F9EnqL2W0Wdi3gIB", endpoint: ThatAppWeb.Endpoint, view: ThatAppWeb.PostLive.Index, parent_pid: nil, root_pid: #PID<0.741.0>, router: ThatAppWeb.Router, assigns: %{post: %ThatApp.Blogs.Post{__meta__: #Ecto.Schema.Metadata<:loaded, "posts">, id: "cfff6258-bb87-4939-b53e-0488924628df", description: "one", title: "one", tags: "one", user_id: nil, inserted_at: ~U[2024-05-20 09:19:22Z], updated_at: ~U[2024-05-20 09:19:22Z]}, __changed__: %{}, page_title: "Edit Post", flash: %{}, live_action: :edit, streams: %{__changed__: MapSet.new([]), posts: %Phoenix.LiveView.LiveStream{name: :posts, dom_id: #Function<3.53432546/1 in Phoenix.LiveView.LiveStream.new/4>, ref: "0", inserts: [], deletes: [], reset?: false, consumable?: false}, __configured__: %{}, __ref__: 1}}, transport_pid: #PID<0.727.0>, ...>, components: {%{2 => {ThatAppWeb.PostLive.FormComponent, "cfff6258-bb87-4939-b53e-0488924628df", %{id: "cfff6258-bb87-4939-b53e-0488924628df", title: "Edit Post", form: %Phoenix.HTML.Form{source: #Ecto.Changeset<action: :validate, changes: %{title: "one edited"}, errors: [], data: #ThatApp.Blogs.Post<>, valid?: true>, impl: Phoenix.HTML.FormData.Ecto.Changeset, id: "post", name: "post", data: %ThatApp.Blogs.Post{__meta__: #Ecto.Schema.Metadata<:loaded, "posts">, id: "cfff6258-bb87-4939-b53e-0488924628df", description: "one", title: "one", tags: "one", user_id: nil, inserted_at: ~U[2024-05-20 09:19:22Z], updated_at: ~U[2024-05-20 09:19:22Z]}, action: :validate, hidden: [id: "cfff6258-bb87-4939-b53e-0488924628df"], params: %{"description" => "one", "tags" => "one", "title" => "one edited"}, errors: [], options: [method: "put"], index: nil}, action: :edit, post: %ThatApp.Blogs.Post{__meta__: #Ecto.Schema.Metadata<:loaded, "posts">, id: "cfff6258-bb87-4939-b53e-0488924628df", description: "one", title: "one", tags: "one", user_id: nil, inserted_at: ~U[2024-05-20 09:19:22Z], updated_at: ~U[2024-05-20 09:19:22Z]}, patch: "/posts", __changed__: %{}, flash: %{}, myself: %Phoenix.LiveComponent.CID{cid: 2}}, %{live_temp: %{}, lifecycle: %Phoenix.LiveView.Lifecycle{after_render: [], handle_async: [], handle_event: [], handle_info: [], handle_params: [], mount: []}, root_view: ThatAppWeb.PostLive.Index, children_cids: []}, {317584324068273725318262321756466881526, %{0 => {129913521344013900437307151325315812233, %{1 => {233997063007080961856270903303917921054, %{}}, 2 => {192791172343770037778978249349782823967, %{0 => {189874606890076996017747194639897484376, %{}}}}}}, 1 => {201288759643648041960737882771866884573, %{0 => {156290168880912491643620919600331751167, %{3 => {173848314436077778849879996089780042402, %{0 => {189524960970849014830263058757653543771, %{0 => {333361833819798549196027895063149018134, %{1 => {15473295715008354310922595741131324000, %{1 => {159184156934940049462845695086240555033, %{}}}}}}, 1 => {333361833819798549196027895063149018134, %{1 => {15473295715008354310922595741131324000, %{1 => {159184156934940049462845695086240555033, %{}}}}}}, 2 => {333361833819798549196027895063149018134, %{1 => {15473295715008354310922595741131324000, %{1 => {159184156934940049462845695086240555033, %{}}}}}}}}, 1 => 242793902076835272961621420490506943479}}}}}}}}}}, %{ThatAppWeb.PostLive.FormComponent => %{"cfff6258-bb87-4939-b53e-0488924628df" => 2}}, 3}, topic: "lv:phx-F9EnqL2W0Wdi3gIB", serializer: Phoenix.Socket.V2.JSONSerializer, join_ref: "135", upload_names: %{}, upload_pids: %{}}
# ----------this is mount--------
# [debug] MOUNT ThatAppWeb.PostLive.Index
#   Parameters: %{"id" => "cfff6258-bb87-4939-b53e-0488924628df"}
#   Session: %{"_csrf_token" => "gOAaM_uRu6xoAhuKagZEFX7z"}
# %{"id" => "cfff6258-bb87-4939-b53e-0488924628df"}
# #Phoenix.LiveView.Socket<
#   id: "phx-F9EnqL2W0Wdi3gIB",
#   endpoint: ThatAppWeb.Endpoint,
#   view: ThatAppWeb.PostLive.Index,
#   parent_pid: nil,
#   root_pid: #PID<0.1037.0>,
#   router: ThatAppWeb.Router,
#   assigns: %{__changed__: %{}, flash: %{}, live_action: :edit},
#   transport_pid: #PID<0.727.0>,
#   ...
# >
# [debug] QUERY OK source="posts" db=1.5ms idle=1404.2ms
# SELECT p0."id", p0."description", p0."title", p0."tags", p0."user_id", p0."inserted_at", p0."updated_at" FROM "posts" AS p0 []
# ↳ ThatAppWeb.PostLive.Index.mount/3, at: lib/that_app_web/live/post_live/index.ex:12
# [debug] Replied in 2ms
# [debug] HANDLE PARAMS in ThatAppWeb.PostLive.Index
#   Parameters: %{"id" => "cfff6258-bb87-4939-b53e-0488924628df"}
# ----------this is handle params --------
# %{"id" => "cfff6258-bb87-4939-b53e-0488924628df"}
# #Phoenix.LiveView.Socket<
#   id: "phx-F9EnqL2W0Wdi3gIB",
#   endpoint: ThatAppWeb.Endpoint,
#   view: ThatAppWeb.PostLive.Index,
#   parent_pid: nil,
#   root_pid: #PID<0.1037.0>,
#   router: ThatAppWeb.Router,
#   assigns: %{
#     __changed__: %{streams: true},
#     flash: %{},
#     live_action: :edit,
#     streams: %{
#       __changed__: MapSet.new([:posts]),
#       posts: %Phoenix.LiveView.LiveStream{
#         name: :posts,
#         dom_id: #Function<3.53432546/1 in Phoenix.LiveView.LiveStream.new/4>,
#         ref: "0",
#         inserts: [
#           {"posts-68528957-8f2a-4312-94a0-3ab16d771db1", -1,
#            %ThatApp.Blogs.Post{
#              __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#              id: "68528957-8f2a-4312-94a0-3ab16d771db1",
#              description: "new",
#              title: "title",
#              tags: "new",
#              user_id: nil,
#              inserted_at: ~U[2024-05-19 16:09:18Z],
#              updated_at: ~U[2024-05-19 16:09:36Z]
#            }, nil},
#           {"posts-cfff6258-bb87-4939-b53e-0488924628df", -1,
#            %ThatApp.Blogs.Post{
#              __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#              id: "cfff6258-bb87-4939-b53e-0488924628df",
#              description: "one",
#              title: "one",
#              tags: "one",
#              user_id: nil,
#              inserted_at: ~U[2024-05-20 09:19:22Z],
#              updated_at: ~U[2024-05-20 09:19:22Z]
#            }, nil}
#         ],
#         deletes: [],
#         reset?: false,
#         consumable?: false
#       },
#       __configured__: %{},
#       __ref__: 1
#     }
#   },
#   transport_pid: #PID<0.727.0>,
#   ...
# >
# ----------this is apply_action_edit user--------
# :edit
# #Phoenix.LiveView.Socket<
#   id: "phx-F9EnqL2W0Wdi3gIB",
#   endpoint: ThatAppWeb.Endpoint,
#   view: ThatAppWeb.PostLive.Index,
#   parent_pid: nil,
#   root_pid: #PID<0.1037.0>,
#   router: ThatAppWeb.Router,
#   assigns: %{
#     __changed__: %{streams: true},
#     flash: %{},
#     live_action: :edit,
#     streams: %{
#       __changed__: MapSet.new([:posts]),
#       posts: %Phoenix.LiveView.LiveStream{
#         name: :posts,
#         dom_id: #Function<3.53432546/1 in Phoenix.LiveView.LiveStream.new/4>,
#         ref: "0",
#         inserts: [
#           {"posts-68528957-8f2a-4312-94a0-3ab16d771db1", -1,
#            %ThatApp.Blogs.Post{
#              __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#              id: "68528957-8f2a-4312-94a0-3ab16d771db1",
#              description: "new",
#              title: "title",
#              tags: "new",
#              user_id: nil,
#              inserted_at: ~U[2024-05-19 16:09:18Z],
#              updated_at: ~U[2024-05-19 16:09:36Z]
#            }, nil},
#           {"posts-cfff6258-bb87-4939-b53e-0488924628df", -1,
#            %ThatApp.Blogs.Post{
#              __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#              id: "cfff6258-bb87-4939-b53e-0488924628df",
#              description: "one",
#              title: "one",
#              tags: "one",
#              user_id: nil,
#              inserted_at: ~U[2024-05-20 09:19:22Z],
#              updated_at: ~U[2024-05-20 09:19:22Z]
#            }, nil}
#         ],
#         deletes: [],
#         reset?: false,
#         consumable?: false
#       },
#       __configured__: %{},
#       __ref__: 1
#     }
#   },
#   transport_pid: #PID<0.727.0>,
#   ...
# >
# [debug] QUERY OK source="posts" db=1.5ms idle=1408.1ms
# SELECT p0."id", p0."description", p0."title", p0."tags", p0."user_id", p0."inserted_at", p0."updated_at" FROM "posts" AS p0 WHERE (p0."id" = $1) ["cfff6258-bb87-4939-b53e-0488924628df"]
# ↳ ThatAppWeb.PostLive.Index.apply_action/3, at: lib/that_app_web/live/post_live/index.ex:29
# [debug] Replied in 3ms
# ================= this is update post =================
# %{
#   id: "cfff6258-bb87-4939-b53e-0488924628df",
#   title: "Edit Post",
#   action: :edit,
#   post: %ThatApp.Blogs.Post{
#     __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#     id: "cfff6258-bb87-4939-b53e-0488924628df",
#     description: "one",
#     title: "one",
#     tags: "one",
#     user_id: nil,
#     inserted_at: ~U[2024-05-20 09:19:22Z],
#     updated_at: ~U[2024-05-20 09:19:22Z]
#   },
#   patch: "/posts"
# }
# #Phoenix.LiveView.Socket<
#   id: "phx-F9EnqL2W0Wdi3gIB",
#   endpoint: ThatAppWeb.Endpoint,
#   view: ThatAppWeb.PostLive.Index,
#   parent_pid: nil,
#   root_pid: #PID<0.1037.0>,
#   router: ThatAppWeb.Router,
#   assigns: %{
#     __changed__: %{flash: true},
#     flash: %{},
#     myself: %Phoenix.LiveComponent.CID{cid: 1}
#   },
#   transport_pid: #PID<0.727.0>,
#   ...
# >
# ================= this is assign_form post =================
# #Ecto.Changeset<action: nil, changes: %{}, errors: [],
#  data: #ThatApp.Blogs.Post<>, valid?: true>
# #Phoenix.LiveView.Socket<
#   id: "phx-F9EnqL2W0Wdi3gIB",
#   endpoint: ThatAppWeb.Endpoint,
#   view: ThatAppWeb.PostLive.Index,
#   parent_pid: nil,
#   root_pid: #PID<0.1037.0>,
#   router: ThatAppWeb.Router,
#   assigns: %{
#     id: "cfff6258-bb87-4939-b53e-0488924628df",
#     title: "Edit Post",
#     action: :edit,
#     post: %ThatApp.Blogs.Post{
#       __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#       id: "cfff6258-bb87-4939-b53e-0488924628df",
#       description: "one",
#       title: "one",
#       tags: "one",
#       user_id: nil,
#       inserted_at: ~U[2024-05-20 09:19:22Z],
#       updated_at: ~U[2024-05-20 09:19:22Z]
#     },
#     patch: "/posts",
#     __changed__: %{
#       id: true,
#       title: true,
#       action: true,
#       post: true,
#       patch: true,
#       flash: true
#     },
#     flash: %{},
#     myself: %Phoenix.LiveComponent.CID{cid: 1}
#   },
#   transport_pid: #PID<0.727.0>,
#   ...
# >
# ================= this is render save post =================
# %{
#   id: "cfff6258-bb87-4939-b53e-0488924628df",
#   socket: #Phoenix.LiveView.Socket<
#     id: "phx-F9EnqL2W0Wdi3gIB",
#     endpoint: ThatAppWeb.Endpoint,
#     view: ThatAppWeb.PostLive.Index,
#     parent_pid: nil,
#     root_pid: #PID<0.1037.0>,
#     router: ThatAppWeb.Router,
#     assigns: #Phoenix.LiveView.Socket.AssignsNotInSocket<>,
#     transport_pid: #PID<0.727.0>,
#     ...
#   >,
#   title: "Edit Post",
#   form: %Phoenix.HTML.Form{
#     source: #Ecto.Changeset<action: nil, changes: %{}, errors: [],
#      data: #ThatApp.Blogs.Post<>, valid?: true>,
#     impl: Phoenix.HTML.FormData.Ecto.Changeset,
#     id: "post",
#     name: "post",
#     data: %ThatApp.Blogs.Post{
#       __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#       id: "cfff6258-bb87-4939-b53e-0488924628df",
#       description: "one",
#       title: "one",
#       tags: "one",
#       user_id: nil,
#       inserted_at: ~U[2024-05-20 09:19:22Z],
#       updated_at: ~U[2024-05-20 09:19:22Z]
#     },
#     action: nil,
#     hidden: [id: "cfff6258-bb87-4939-b53e-0488924628df"],
#     params: %{},
#     errors: [],
#     options: [method: "put"],
#     index: nil
#   },
#   action: :edit,
#   post: %ThatApp.Blogs.Post{
#     __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#     id: "cfff6258-bb87-4939-b53e-0488924628df",
#     description: "one",
#     title: "one",
#     tags: "one",
#     user_id: nil,
#     inserted_at: ~U[2024-05-20 09:19:22Z],
#     updated_at: ~U[2024-05-20 09:19:22Z]
#   },
#   patch: "/posts",
#   __changed__: %{
#     id: true,
#     title: true,
#     form: true,
#     action: true,
#     post: true,
#     patch: true,
#     flash: true
#   },
#   flash: %{},
#   myself: %Phoenix.LiveComponent.CID{cid: 1}
# }
# ================= this is handle event validate post  =================
# [debug] HANDLE EVENT "validate" in ThatAppWeb.PostLive.Index
#   Component: ThatAppWeb.PostLive.FormComponent
#   Parameters: %{"_target" => ["post", "title"], "post" => %{"description" => "one", "tags" => "one", "title" => "one edited"}}
# %{"description" => "one", "tags" => "one", "title" => "one edited"}
# #Phoenix.LiveView.Socket<
#   id: "phx-F9EnqL2W0Wdi3gIB",
#   endpoint: ThatAppWeb.Endpoint,
#   view: ThatAppWeb.PostLive.Index,
#   parent_pid: nil,
#   root_pid: #PID<0.1037.0>,
#   router: ThatAppWeb.Router,
#   assigns: %{
#     id: "cfff6258-bb87-4939-b53e-0488924628df",
#     title: "Edit Post",
#     form: %Phoenix.HTML.Form{
#       source: #Ecto.Changeset<action: nil, changes: %{}, errors: [],
#        data: #ThatApp.Blogs.Post<>, valid?: true>,
#       impl: Phoenix.HTML.FormData.Ecto.Changeset,
#       id: "post",
#       name: "post",
#       data: %ThatApp.Blogs.Post{
#         __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#         id: "cfff6258-bb87-4939-b53e-0488924628df",
#         description: "one",
#         title: "one",
#         tags: "one",
#         user_id: nil,
#         inserted_at: ~U[2024-05-20 09:19:22Z],
#         updated_at: ~U[2024-05-20 09:19:22Z]
#       },
#       action: nil,
#       hidden: [id: "cfff6258-bb87-4939-b53e-0488924628df"],
#       params: %{},
#       errors: [],
#       options: [method: "put"],
#       index: nil
#     },
#     action: :edit,
#     post: %ThatApp.Blogs.Post{
#       __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#       id: "cfff6258-bb87-4939-b53e-0488924628df",
#       description: "one",
#       title: "one",
#       tags: "one",
#       user_id: nil,
#       inserted_at: ~U[2024-05-20 09:19:22Z],
#       updated_at: ~U[2024-05-20 09:19:22Z]
#     },
#     patch: "/posts",
#     __changed__: %{},
#     flash: %{},
#     myself: %Phoenix.LiveComponent.CID{cid: 1}
#   },
#   transport_pid: #PID<0.727.0>,
#   ...
# >
# ================= this is assign_form post =================
# #Ecto.Changeset<
#   action: :validate,
#   changes: %{title: "one edited"},
#   errors: [],
#   data: #ThatApp.Blogs.Post<>,
#   valid?: true
# >
# #Phoenix.LiveView.Socket<
#   id: "phx-F9EnqL2W0Wdi3gIB",
#   endpoint: ThatAppWeb.Endpoint,
#   view: ThatAppWeb.PostLive.Index,
#   parent_pid: nil,
#   root_pid: #PID<0.1037.0>,
#   router: ThatAppWeb.Router,
#   assigns: %{
#     id: "cfff6258-bb87-4939-b53e-0488924628df",
#     title: "Edit Post",
#     form: %Phoenix.HTML.Form{
#       source: #Ecto.Changeset<action: nil, changes: %{}, errors: [],
#        data: #ThatApp.Blogs.Post<>, valid?: true>,
#       impl: Phoenix.HTML.FormData.Ecto.Changeset,
#       id: "post",
#       name: "post",
#       data: %ThatApp.Blogs.Post{
#         __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#         id: "cfff6258-bb87-4939-b53e-0488924628df",
#         description: "one",
#         title: "one",
#         tags: "one",
#         user_id: nil,
#         inserted_at: ~U[2024-05-20 09:19:22Z],
#         updated_at: ~U[2024-05-20 09:19:22Z]
#       },
#       action: nil,
#       hidden: [id: "cfff6258-bb87-4939-b53e-0488924628df"],
#       params: %{},
#       errors: [],
#       options: [method: "put"],
#       index: nil
#     },
#     action: :edit,
#     post: %ThatApp.Blogs.Post{
#       __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#       id: "cfff6258-bb87-4939-b53e-0488924628df",
#       description: "one",
#       title: "one",
#       tags: "one",
#       user_id: nil,
#       inserted_at: ~U[2024-05-20 09:19:22Z],
#       updated_at: ~U[2024-05-20 09:19:22Z]
#     },
#     patch: "/posts",
#     __changed__: %{},
#     flash: %{},
#     myself: %Phoenix.LiveComponent.CID{cid: 1}
#   },
#   transport_pid: #PID<0.727.0>,
#   ...
# >
# ================= this is render save post =================
# [debug] Replied in 1ms
# %{
#   id: "cfff6258-bb87-4939-b53e-0488924628df",
#   socket: #Phoenix.LiveView.Socket<
#     id: "phx-F9EnqL2W0Wdi3gIB",
#     endpoint: ThatAppWeb.Endpoint,
#     view: ThatAppWeb.PostLive.Index,
#     parent_pid: nil,
#     root_pid: #PID<0.1037.0>,
#     router: ThatAppWeb.Router,
#     assigns: #Phoenix.LiveView.Socket.AssignsNotInSocket<>,
#     transport_pid: #PID<0.727.0>,
#     ...
#   >,
#   title: "Edit Post",
#   form: %Phoenix.HTML.Form{
#     source: #Ecto.Changeset<
#       action: :validate,
#       changes: %{title: "one edited"},
#       errors: [],
#       data: #ThatApp.Blogs.Post<>,
#       valid?: true
#     >,
#     impl: Phoenix.HTML.FormData.Ecto.Changeset,
#     id: "post",
#     name: "post",
#     data: %ThatApp.Blogs.Post{
#       __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#       id: "cfff6258-bb87-4939-b53e-0488924628df",
#       description: "one",
#       title: "one",
#       tags: "one",
#       user_id: nil,
#       inserted_at: ~U[2024-05-20 09:19:22Z],
#       updated_at: ~U[2024-05-20 09:19:22Z]
#     },
#     action: :validate,
#     hidden: [id: "cfff6258-bb87-4939-b53e-0488924628df"],
#     params: %{"description" => "one", "tags" => "one", "title" => "one edited"},
#     errors: [],
#     options: [method: "put"],
#     index: nil
#   },
#   action: :edit,
#   post: %ThatApp.Blogs.Post{
#     __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#     id: "cfff6258-bb87-4939-b53e-0488924628df",
#     description: "one",
#     title: "one",
#     tags: "one",
#     user_id: nil,
#     inserted_at: ~U[2024-05-20 09:19:22Z],
#     updated_at: ~U[2024-05-20 09:19:22Z]
#   },
#   patch: "/posts",
#   __changed__: %{
#     form: %Phoenix.HTML.Form{
#       source: #Ecto.Changeset<action: nil, changes: %{}, errors: [],
#        data: #ThatApp.Blogs.Post<>, valid?: true>,
#       impl: Phoenix.HTML.FormData.Ecto.Changeset,
#       id: "post",
#       name: "post",
#       data: %ThatApp.Blogs.Post{
#         __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#         id: "cfff6258-bb87-4939-b53e-0488924628df",
#         description: "one",
#         title: "one",
#         tags: "one",
#         user_id: nil,
#         inserted_at: ~U[2024-05-20 09:19:22Z],
#         updated_at: ~U[2024-05-20 09:19:22Z]
#       },
#       action: nil,
#       hidden: [id: "cfff6258-bb87-4939-b53e-0488924628df"],
#       params: %{},
#       errors: [],
#       options: [method: "put"],
#       index: nil
#     }
#   },
#   flash: %{},
#   myself: %Phoenix.LiveComponent.CID{cid: 1}
# }
# ----------this is handle params --------
# [debug] HANDLE PARAMS in ThatAppWeb.PostLive.Index
#   Parameters: %{}
# %{}
# #Phoenix.LiveView.Socket<
#   id: "phx-F9EnqL2W0Wdi3gIB",
#   endpoint: ThatAppWeb.Endpoint,
#   view: ThatAppWeb.PostLive.Index,
#   parent_pid: nil,
#   root_pid: #PID<0.1037.0>,
#   router: ThatAppWeb.Router,
#   assigns: %{
#     post: %ThatApp.Blogs.Post{
#       __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#       id: "cfff6258-bb87-4939-b53e-0488924628df",
#       description: "one",
#       title: "one",
#       tags: "one",
#       user_id: nil,
#       inserted_at: ~U[2024-05-20 09:19:22Z],
#       updated_at: ~U[2024-05-20 09:19:22Z]
#     },
#     __changed__: %{live_action: true},
#     page_title: "Edit Post",
#     flash: %{},
#     live_action: :index,
#     streams: %{
#       __changed__: MapSet.new([]),
#       posts: %Phoenix.LiveView.LiveStream{
#         name: :posts,
#         dom_id: #Function<3.53432546/1 in Phoenix.LiveView.LiveStream.new/4>,
#         ref: "0",
#         inserts: [],
#         deletes: [],
#         reset?: false,
#         consumable?: false
#       },
#       __configured__: %{},
#       __ref__: 1
#     }
#   },
#   transport_pid: #PID<0.727.0>,
#   ...
# >
# ----------this is apply_action_index  user--------
# :index
# #Phoenix.LiveView.Socket<
#   id: "phx-F9EnqL2W0Wdi3gIB",
#   endpoint: ThatAppWeb.Endpoint,
#   view: ThatAppWeb.PostLive.Index,
#   parent_pid: nil,
#   root_pid: #PID<0.1037.0>,
#   router: ThatAppWeb.Router,
#   assigns: %{
#     post: %ThatApp.Blogs.Post{
#       __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#       id: "cfff6258-bb87-4939-b53e-0488924628df",
#       description: "one",
#       title: "one",
#       tags: "one",
#       user_id: nil,
#       inserted_at: ~U[2024-05-20 09:19:22Z],
#       updated_at: ~U[2024-05-20 09:19:22Z]
#     },
#     __changed__: %{live_action: true},
#     page_title: "Edit Post",
#     flash: %{},
#     live_action: :index,
#     streams: %{
#       __changed__: MapSet.new([]),
#       posts: %Phoenix.LiveView.LiveStream{
#         name: :posts,
#         dom_id: #Function<3.53432546/1 in Phoenix.LiveView.LiveStream.new/4>,
#         ref: "0",
#         inserts: [],
#         deletes: [],
#         reset?: false,
#         consumable?: false
#       },
#       __configured__: %{},
#       __ref__: 1
#     }
#   },
#   transport_pid: #PID<0.727.0>,
#   ...
# >
# [debug] Replied in 2ms
# _________________this is mount show _______________-
# [debug] MOUNT ThatAppWeb.PostLive.Show
#   Parameters: %{"id" => "cfff6258-bb87-4939-b53e-0488924628df"}
#   Session: %{"_csrf_token" => "gOAaM_uRu6xoAhuKagZEFX7z"}
# %{"id" => "cfff6258-bb87-4939-b53e-0488924628df"}
# %{"_csrf_token" => "gOAaM_uRu6xoAhuKagZEFX7z"}
# #Phoenix.LiveView.Socket<
#   id: "phx-F9EnqL2W0Wdi3gIB",
#   endpoint: ThatAppWeb.Endpoint,
#   view: ThatAppWeb.PostLive.Show,
#   parent_pid: nil,
#   root_pid: #PID<0.1093.0>,
#   router: ThatAppWeb.Router,
#   assigns: %{__changed__: %{}, flash: %{}, live_action: :show},
#   transport_pid: #PID<0.727.0>,
#   ...
# >
# [debug] Replied in 1ms
# _________________this is handle_params show _______________-
# [debug] HANDLE PARAMS in ThatAppWeb.PostLive.Show
#   Parameters: %{"id" => "cfff6258-bb87-4939-b53e-0488924628df"}
# #Phoenix.LiveView.Socket<
#   id: "phx-F9EnqL2W0Wdi3gIB",
#   endpoint: ThatAppWeb.Endpoint,
#   view: ThatAppWeb.PostLive.Show,
#   parent_pid: nil,
#   root_pid: #PID<0.1093.0>,
#   router: ThatAppWeb.Router,
#   assigns: %{__changed__: %{}, flash: %{}, live_action: :show},
#   transport_pid: #PID<0.727.0>,
#   ...
# >
# [debug] QUERY OK source="posts" db=1.3ms idle=1974.4ms
# SELECT p0."id", p0."description", p0."title", p0."tags", p0."user_id", p0."inserted_at", p0."updated_at" FROM "posts" AS p0 WHERE (p0."id" = $1) ["cfff6258-bb87-4939-b53e-0488924628df"]
# ↳ ThatAppWeb.PostLive.Show.handle_params/3, at: lib/that_app_web/live/post_live/show.ex:22
# [debug] Replied in 2ms
# _________________this is handle_params show _______________-
# [debug] HANDLE PARAMS in ThatAppWeb.PostLive.Show
#   Parameters: %{"id" => "cfff6258-bb87-4939-b53e-0488924628df"}
# #Phoenix.LiveView.Socket<
#   id: "phx-F9EnqL2W0Wdi3gIB",
#   endpoint: ThatAppWeb.Endpoint,
#   view: ThatAppWeb.PostLive.Show,
#   parent_pid: nil,
#   root_pid: #PID<0.1093.0>,
#   router: ThatAppWeb.Router,
#   assigns: %{
#     post: %ThatApp.Blogs.Post{
#       __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#       id: "cfff6258-bb87-4939-b53e-0488924628df",
#       description: "one",
#       title: "one",
#       tags: "one",
#       user_id: nil,
#       inserted_at: ~U[2024-05-20 09:19:22Z],
#       updated_at: ~U[2024-05-20 09:19:22Z]
#     },
#     __changed__: %{live_action: true},
#     page_title: "Show Post",
#     flash: %{},
#     live_action: :edit
#   },
#   transport_pid: #PID<0.727.0>,
#   ...
# >
# [debug] QUERY OK source="posts" db=0.8ms idle=1675.2ms
# SELECT p0."id", p0."description", p0."title", p0."tags", p0."user_id", p0."inserted_at", p0."updated_at" FROM "posts" AS p0 WHERE (p0."id" = $1) ["cfff6258-bb87-4939-b53e-0488924628df"]
# ↳ ThatAppWeb.PostLive.Show.handle_params/3, at: lib/that_app_web/live/post_live/show.ex:22
# [debug] Replied in 2ms
# ================= this is update post =================
# %{
#   id: "cfff6258-bb87-4939-b53e-0488924628df",
#   title: "Edit Post",
#   action: :edit,
#   post: %ThatApp.Blogs.Post{
#     __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#     id: "cfff6258-bb87-4939-b53e-0488924628df",
#     description: "one",
#     title: "one",
#     tags: "one",
#     user_id: nil,
#     inserted_at: ~U[2024-05-20 09:19:22Z],
#     updated_at: ~U[2024-05-20 09:19:22Z]
#   },
#   patch: "/posts/cfff6258-bb87-4939-b53e-0488924628df"
# }
# #Phoenix.LiveView.Socket<
#   id: "phx-F9EnqL2W0Wdi3gIB",
#   endpoint: ThatAppWeb.Endpoint,
#   view: ThatAppWeb.PostLive.Show,
#   parent_pid: nil,
#   root_pid: #PID<0.1093.0>,
#   router: ThatAppWeb.Router,
#   assigns: %{
#     __changed__: %{flash: true},
#     flash: %{},
#     myself: %Phoenix.LiveComponent.CID{cid: 1}
#   },
#   transport_pid: #PID<0.727.0>,
#   ...
# >
# ================= this is assign_form post =================
# #Ecto.Changeset<action: nil, changes: %{}, errors: [],
#  data: #ThatApp.Blogs.Post<>, valid?: true>
# #Phoenix.LiveView.Socket<
#   id: "phx-F9EnqL2W0Wdi3gIB",
#   endpoint: ThatAppWeb.Endpoint,
#   view: ThatAppWeb.PostLive.Show,
#   parent_pid: nil,
#   root_pid: #PID<0.1093.0>,
#   router: ThatAppWeb.Router,
#   assigns: %{
#     id: "cfff6258-bb87-4939-b53e-0488924628df",
#     title: "Edit Post",
#     action: :edit,
#     post: %ThatApp.Blogs.Post{
#       __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#       id: "cfff6258-bb87-4939-b53e-0488924628df",
#       description: "one",
#       title: "one",
#       tags: "one",
#       user_id: nil,
#       inserted_at: ~U[2024-05-20 09:19:22Z],
#       updated_at: ~U[2024-05-20 09:19:22Z]
#     },
#     patch: "/posts/cfff6258-bb87-4939-b53e-0488924628df",
#     __changed__: %{
#       id: true,
#       title: true,
#       action: true,
#       post: true,
#       patch: true,
#       flash: true
#     },
#     flash: %{},
#     myself: %Phoenix.LiveComponent.CID{cid: 1}
#   },
#   transport_pid: #PID<0.727.0>,
#   ...
# >
# ================= this is render save post =================
# %{
#   id: "cfff6258-bb87-4939-b53e-0488924628df",
#   socket: #Phoenix.LiveView.Socket<
#     id: "phx-F9EnqL2W0Wdi3gIB",
#     endpoint: ThatAppWeb.Endpoint,
#     view: ThatAppWeb.PostLive.Show,
#     parent_pid: nil,
#     root_pid: #PID<0.1093.0>,
#     router: ThatAppWeb.Router,
#     assigns: #Phoenix.LiveView.Socket.AssignsNotInSocket<>,
#     transport_pid: #PID<0.727.0>,
#     ...
#   >,
#   title: "Edit Post",
#   form: %Phoenix.HTML.Form{
#     source: #Ecto.Changeset<action: nil, changes: %{}, errors: [],
#      data: #ThatApp.Blogs.Post<>, valid?: true>,
#     impl: Phoenix.HTML.FormData.Ecto.Changeset,
#     id: "post",
#     name: "post",
#     data: %ThatApp.Blogs.Post{
#       __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#       id: "cfff6258-bb87-4939-b53e-0488924628df",
#       description: "one",
#       title: "one",
#       tags: "one",
#       user_id: nil,
#       inserted_at: ~U[2024-05-20 09:19:22Z],
#       updated_at: ~U[2024-05-20 09:19:22Z]
#     },
#     action: nil,
#     hidden: [id: "cfff6258-bb87-4939-b53e-0488924628df"],
#     params: %{},
#     errors: [],
#     options: [method: "put"],
#     index: nil
#   },
#   action: :edit,
#   post: %ThatApp.Blogs.Post{
#     __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#     id: "cfff6258-bb87-4939-b53e-0488924628df",
#     description: "one",
#     title: "one",
#     tags: "one",
#     user_id: nil,
#     inserted_at: ~U[2024-05-20 09:19:22Z],
#     updated_at: ~U[2024-05-20 09:19:22Z]
#   },
#   patch: "/posts/cfff6258-bb87-4939-b53e-0488924628df",
#   __changed__: %{
#     id: true,
#     title: true,
#     form: true,
#     action: true,
#     post: true,
#     patch: true,
#     flash: true
#   },
#   flash: %{},
#   myself: %Phoenix.LiveComponent.CID{cid: 1}
# }
# ================= this is handle event validate post  =================
# [debug] HANDLE EVENT "validate" in ThatAppWeb.PostLive.Show
#   Component: ThatAppWeb.PostLive.FormComponent
#   Parameters: %{"_target" => ["post", "title"], "post" => %{"description" => "one", "tags" => "one", "title" => "one "}}
# %{"description" => "one", "tags" => "one", "title" => "one "}
# #Phoenix.LiveView.Socket<
#   id: "phx-F9EnqL2W0Wdi3gIB",
#   endpoint: ThatAppWeb.Endpoint,
#   view: ThatAppWeb.PostLive.Show,
#   parent_pid: nil,
#   root_pid: #PID<0.1093.0>,
#   router: ThatAppWeb.Router,
#   assigns: %{
#     id: "cfff6258-bb87-4939-b53e-0488924628df",
#     title: "Edit Post",
#     form: %Phoenix.HTML.Form{
#       source: #Ecto.Changeset<action: nil, changes: %{}, errors: [],
#        data: #ThatApp.Blogs.Post<>, valid?: true>,
#       impl: Phoenix.HTML.FormData.Ecto.Changeset,
#       id: "post",
#       name: "post",
#       data: %ThatApp.Blogs.Post{
#         __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#         id: "cfff6258-bb87-4939-b53e-0488924628df",
#         description: "one",
#         title: "one",
#         tags: "one",
#         user_id: nil,
#         inserted_at: ~U[2024-05-20 09:19:22Z],
#         updated_at: ~U[2024-05-20 09:19:22Z]
#       },
#       action: nil,
#       hidden: [id: "cfff6258-bb87-4939-b53e-0488924628df"],
#       params: %{},
#       errors: [],
#       options: [method: "put"],
#       index: nil
#     },
#     action: :edit,
#     post: %ThatApp.Blogs.Post{
#       __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#       id: "cfff6258-bb87-4939-b53e-0488924628df",
#       description: "one",
#       title: "one",
#       tags: "one",
#       user_id: nil,
#       inserted_at: ~U[2024-05-20 09:19:22Z],
#       updated_at: ~U[2024-05-20 09:19:22Z]
#     },
#     patch: "/posts/cfff6258-bb87-4939-b53e-0488924628df",
#     __changed__: %{},
#     flash: %{},
#     myself: %Phoenix.LiveComponent.CID{cid: 1}
#   },
#   transport_pid: #PID<0.727.0>,
#   ...
# >
# ================= this is assign_form post =================
# #Ecto.Changeset<
#   action: :validate,
#   changes: %{title: "one "},
#   errors: [],
#   data: #ThatApp.Blogs.Post<>,
#   valid?: true
# >
# #Phoenix.LiveView.Socket<
#   id: "phx-F9EnqL2W0Wdi3gIB",
#   endpoint: ThatAppWeb.Endpoint,
#   view: ThatAppWeb.PostLive.Show,
#   parent_pid: nil,
#   root_pid: #PID<0.1093.0>,
#   router: ThatAppWeb.Router,
#   assigns: %{
#     id: "cfff6258-bb87-4939-b53e-0488924628df",
#     title: "Edit Post",
#     form: %Phoenix.HTML.Form{
#       source: #Ecto.Changeset<action: nil, changes: %{}, errors: [],
#        data: #ThatApp.Blogs.Post<>, valid?: true>,
#       impl: Phoenix.HTML.FormData.Ecto.Changeset,
#       id: "post",
#       name: "post",
#       data: %ThatApp.Blogs.Post{
#         __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#         id: "cfff6258-bb87-4939-b53e-0488924628df",
#         description: "one",
#         title: "one",
#         tags: "one",
#         user_id: nil,
#         inserted_at: ~U[2024-05-20 09:19:22Z],
#         updated_at: ~U[2024-05-20 09:19:22Z]
#       },
#       action: nil,
#       hidden: [id: "cfff6258-bb87-4939-b53e-0488924628df"],
#       params: %{},
#       errors: [],
#       options: [method: "put"],
#       index: nil
#     },
#     action: :edit,
#     post: %ThatApp.Blogs.Post{
#       __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#       id: "cfff6258-bb87-4939-b53e-0488924628df",
#       description: "one",
#       title: "one",
#       tags: "one",
#       user_id: nil,
#       inserted_at: ~U[2024-05-20 09:19:22Z],
#       updated_at: ~U[2024-05-20 09:19:22Z]
#     },
#     patch: "/posts/cfff6258-bb87-4939-b53e-0488924628df",
#     __changed__: %{},
#     flash: %{},
#     myself: %Phoenix.LiveComponent.CID{cid: 1}
#   },
#   transport_pid: #PID<0.727.0>,
#   ...
# >
# ================= this is render save post =================
# [debug] Replied in 2ms
# %{
#   id: "cfff6258-bb87-4939-b53e-0488924628df",
#   socket: #Phoenix.LiveView.Socket<
#     id: "phx-F9EnqL2W0Wdi3gIB",
#     endpoint: ThatAppWeb.Endpoint,
#     view: ThatAppWeb.PostLive.Show,
#     parent_pid: nil,
#     root_pid: #PID<0.1093.0>,
#     router: ThatAppWeb.Router,
#     assigns: #Phoenix.LiveView.Socket.AssignsNotInSocket<>,
#     transport_pid: #PID<0.727.0>,
#     ...
#   >,
#   title: "Edit Post",
#   form: %Phoenix.HTML.Form{
#     source: #Ecto.Changeset<
#       action: :validate,
#       changes: %{title: "one "},
#       errors: [],
#       data: #ThatApp.Blogs.Post<>,
#       valid?: true
#     >,
#     impl: Phoenix.HTML.FormData.Ecto.Changeset,
#     id: "post",
#     name: "post",
#     data: %ThatApp.Blogs.Post{
#       __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#       id: "cfff6258-bb87-4939-b53e-0488924628df",
#       description: "one",
#       title: "one",
#       tags: "one",
#       user_id: nil,
#       inserted_at: ~U[2024-05-20 09:19:22Z],
#       updated_at: ~U[2024-05-20 09:19:22Z]
#     },
#     action: :validate,
#     hidden: [id: "cfff6258-bb87-4939-b53e-0488924628df"],
#     params: %{"description" => "one", "tags" => "one", "title" => "one "},
#     errors: [],
#     options: [method: "put"],
#     index: nil
#   },
#   action: :edit,
#   post: %ThatApp.Blogs.Post{
#     __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#     id: "cfff6258-bb87-4939-b53e-0488924628df",
#     description: "one",
#     title: "one",
#     tags: "one",
#     user_id: nil,
#     inserted_at: ~U[2024-05-20 09:19:22Z],
#     updated_at: ~U[2024-05-20 09:19:22Z]
#   },
#   patch: "/posts/cfff6258-bb87-4939-b53e-0488924628df",
#   __changed__: %{
#     form: %Phoenix.HTML.Form{
#       source: #Ecto.Changeset<action: nil, changes: %{}, errors: [],
#        data: #ThatApp.Blogs.Post<>, valid?: true>,
#       impl: Phoenix.HTML.FormData.Ecto.Changeset,
#       id: "post",
#       name: "post",
#       data: %ThatApp.Blogs.Post{
#         __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#         id: "cfff6258-bb87-4939-b53e-0488924628df",
#         description: "one",
#         title: "one",
#         tags: "one",
#         user_id: nil,
#         inserted_at: ~U[2024-05-20 09:19:22Z],
#         updated_at: ~U[2024-05-20 09:19:22Z]
#       },
#       action: nil,
#       hidden: [id: "cfff6258-bb87-4939-b53e-0488924628df"],
#       params: %{},
#       errors: [],
#       options: [method: "put"],
#       index: nil
#     }
#   },
#   flash: %{},
#   myself: %Phoenix.LiveComponent.CID{cid: 1}
# }
# ================= this is handle event validate post  =================
# [debug] HANDLE EVENT "validate" in ThatAppWeb.PostLive.Show
#   Component: ThatAppWeb.PostLive.FormComponent
#   Parameters: %{"_target" => ["post", "title"], "post" => %{"description" => "one", "tags" => "one", "title" => "one e"}}
# %{"description" => "one", "tags" => "one", "title" => "one e"}
# #Phoenix.LiveView.Socket<
#   id: "phx-F9EnqL2W0Wdi3gIB",
#   endpoint: ThatAppWeb.Endpoint,
#   view: ThatAppWeb.PostLive.Show,
#   parent_pid: nil,
#   root_pid: #PID<0.1093.0>,
#   router: ThatAppWeb.Router,
#   assigns: %{
#     id: "cfff6258-bb87-4939-b53e-0488924628df",
#     title: "Edit Post",
#     form: %Phoenix.HTML.Form{
#       source: #Ecto.Changeset<
#         action: :validate,
#         changes: %{title: "one "},
#         errors: [],
#         data: #ThatApp.Blogs.Post<>,
#         valid?: true
#       >,
#       impl: Phoenix.HTML.FormData.Ecto.Changeset,
#       id: "post",
#       name: "post",
#       data: %ThatApp.Blogs.Post{
#         __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#         id: "cfff6258-bb87-4939-b53e-0488924628df",
#         description: "one",
#         title: "one",
#         tags: "one",
#         user_id: nil,
#         inserted_at: ~U[2024-05-20 09:19:22Z],
#         updated_at: ~U[2024-05-20 09:19:22Z]
#       },
#       action: :validate,
#       hidden: [id: "cfff6258-bb87-4939-b53e-0488924628df"],
#       params: %{"description" => "one", "tags" => "one", "title" => "one "},
#       errors: [],
#       options: [method: "put"],
#       index: nil
#     },
#     action: :edit,
#     post: %ThatApp.Blogs.Post{
#       __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#       id: "cfff6258-bb87-4939-b53e-0488924628df",
#       description: "one",
#       title: "one",
#       tags: "one",
#       user_id: nil,
#       inserted_at: ~U[2024-05-20 09:19:22Z],
#       updated_at: ~U[2024-05-20 09:19:22Z]
#     },
#     patch: "/posts/cfff6258-bb87-4939-b53e-0488924628df",
#     __changed__: %{},
#     flash: %{},
#     myself: %Phoenix.LiveComponent.CID{cid: 1}
#   },
#   transport_pid: #PID<0.727.0>,
#   ...
# >
# ================= this is assign_form post =================
# #Ecto.Changeset<
#   action: :validate,
#   changes: %{title: "one e"},
#   errors: [],
#   data: #ThatApp.Blogs.Post<>,
#   valid?: true
# >
# #Phoenix.LiveView.Socket<
#   id: "phx-F9EnqL2W0Wdi3gIB",
#   endpoint: ThatAppWeb.Endpoint,
#   view: ThatAppWeb.PostLive.Show,
#   parent_pid: nil,
#   root_pid: #PID<0.1093.0>,
#   router: ThatAppWeb.Router,
#   assigns: %{
#     id: "cfff6258-bb87-4939-b53e-0488924628df",
#     title: "Edit Post",
#     form: %Phoenix.HTML.Form{
#       source: #Ecto.Changeset<
#         action: :validate,
#         changes: %{title: "one "},
#         errors: [],
#         data: #ThatApp.Blogs.Post<>,
#         valid?: true
#       >,
#       impl: Phoenix.HTML.FormData.Ecto.Changeset,
#       id: "post",
#       name: "post",
#       data: %ThatApp.Blogs.Post{
#         __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#         id: "cfff6258-bb87-4939-b53e-0488924628df",
#         description: "one",
#         title: "one",
#         tags: "one",
#         user_id: nil,
#         inserted_at: ~U[2024-05-20 09:19:22Z],
#         updated_at: ~U[2024-05-20 09:19:22Z]
#       },
#       action: :validate,
#       hidden: [id: "cfff6258-bb87-4939-b53e-0488924628df"],
#       params: %{"description" => "one", "tags" => "one", "title" => "one "},
#       errors: [],
#       options: [method: "put"],
#       index: nil
#     },
#     action: :edit,
#     post: %ThatApp.Blogs.Post{
#       __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#       id: "cfff6258-bb87-4939-b53e-0488924628df",
#       description: "one",
#       title: "one",
#       tags: "one",
#       user_id: nil,
#       inserted_at: ~U[2024-05-20 09:19:22Z],
#       updated_at: ~U[2024-05-20 09:19:22Z]
#     },
#     patch: "/posts/cfff6258-bb87-4939-b53e-0488924628df",
#     __changed__: %{},
#     flash: %{},
#     myself: %Phoenix.LiveComponent.CID{cid: 1}
#   },
#   transport_pid: #PID<0.727.0>,
#   ...
# >
# ================= this is render save post =================
# [debug] Replied in 3ms
# %{
#   id: "cfff6258-bb87-4939-b53e-0488924628df",
#   socket: #Phoenix.LiveView.Socket<
#     id: "phx-F9EnqL2W0Wdi3gIB",
#     endpoint: ThatAppWeb.Endpoint,
#     view: ThatAppWeb.PostLive.Show,
#     parent_pid: nil,
#     root_pid: #PID<0.1093.0>,
#     router: ThatAppWeb.Router,
#     assigns: #Phoenix.LiveView.Socket.AssignsNotInSocket<>,
#     transport_pid: #PID<0.727.0>,
#     ...
#   >,
#   title: "Edit Post",
#   form: %Phoenix.HTML.Form{
#     source: #Ecto.Changeset<
#       action: :validate,
#       changes: %{title: "one e"},
#       errors: [],
#       data: #ThatApp.Blogs.Post<>,
#       valid?: true
#     >,
#     impl: Phoenix.HTML.FormData.Ecto.Changeset,
#     id: "post",
#     name: "post",
#     data: %ThatApp.Blogs.Post{
#       __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#       id: "cfff6258-bb87-4939-b53e-0488924628df",
#       description: "one",
#       title: "one",
#       tags: "one",
#       user_id: nil,
#       inserted_at: ~U[2024-05-20 09:19:22Z],
#       updated_at: ~U[2024-05-20 09:19:22Z]
#     },
#     action: :validate,
#     hidden: [id: "cfff6258-bb87-4939-b53e-0488924628df"],
#     params: %{"description" => "one", "tags" => "one", "title" => "one e"},
#     errors: [],
#     options: [method: "put"],
#     index: nil
#   },
#   action: :edit,
#   post: %ThatApp.Blogs.Post{
#     __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#     id: "cfff6258-bb87-4939-b53e-0488924628df",
#     description: "one",
#     title: "one",
#     tags: "one",
#     user_id: nil,
#     inserted_at: ~U[2024-05-20 09:19:22Z],
#     updated_at: ~U[2024-05-20 09:19:22Z]
#   },
#   patch: "/posts/cfff6258-bb87-4939-b53e-0488924628df",
#   __changed__: %{
#     form: %Phoenix.HTML.Form{
#       source: #Ecto.Changeset<
#         action: :validate,
#         changes: %{title: "one "},
#         errors: [],
#         data: #ThatApp.Blogs.Post<>,
#         valid?: true
#       >,
#       impl: Phoenix.HTML.FormData.Ecto.Changeset,
#       id: "post",
#       name: "post",
#       data: %ThatApp.Blogs.Post{
#         __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#         id: "cfff6258-bb87-4939-b53e-0488924628df",
#         description: "one",
#         title: "one",
#         tags: "one",
#         user_id: nil,
#         inserted_at: ~U[2024-05-20 09:19:22Z],
#         updated_at: ~U[2024-05-20 09:19:22Z]
#       },
#       action: :validate,
#       hidden: [id: "cfff6258-bb87-4939-b53e-0488924628df"],
#       params: %{"description" => "one", "tags" => "one", "title" => "one "},
#       errors: [],
#       options: [method: "put"],
#       index: nil
#     }
#   },
#   flash: %{},
#   myself: %Phoenix.LiveComponent.CID{cid: 1}
# }
# ================= this is handle event validate post  =================
# [debug] HANDLE EVENT "validate" in ThatAppWeb.PostLive.Show
#   Component: ThatAppWeb.PostLive.FormComponent
#   Parameters: %{"_target" => ["post", "title"], "post" => %{"description" => "one", "tags" => "one", "title" => "one ed"}}
# %{"description" => "one", "tags" => "one", "title" => "one ed"}
# #Phoenix.LiveView.Socket<
#   id: "phx-F9EnqL2W0Wdi3gIB",
#   endpoint: ThatAppWeb.Endpoint,
#   view: ThatAppWeb.PostLive.Show,
#   parent_pid: nil,
#   root_pid: #PID<0.1093.0>,
#   router: ThatAppWeb.Router,
#   assigns: %{
#     id: "cfff6258-bb87-4939-b53e-0488924628df",
#     title: "Edit Post",
#     form: %Phoenix.HTML.Form{
#       source: #Ecto.Changeset<
#         action: :validate,
#         changes: %{title: "one e"},
#         errors: [],
#         data: #ThatApp.Blogs.Post<>,
#         valid?: true
#       >,
#       impl: Phoenix.HTML.FormData.Ecto.Changeset,
#       id: "post",
#       name: "post",
#       data: %ThatApp.Blogs.Post{
#         __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#         id: "cfff6258-bb87-4939-b53e-0488924628df",
#         description: "one",
#         title: "one",
#         tags: "one",
#         user_id: nil,
#         inserted_at: ~U[2024-05-20 09:19:22Z],
#         updated_at: ~U[2024-05-20 09:19:22Z]
#       },
#       action: :validate,
#       hidden: [id: "cfff6258-bb87-4939-b53e-0488924628df"],
#       params: %{"description" => "one", "tags" => "one", "title" => "one e"},
#       errors: [],
#       options: [method: "put"],
#       index: nil
#     },
#     action: :edit,
#     post: %ThatApp.Blogs.Post{
#       __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#       id: "cfff6258-bb87-4939-b53e-0488924628df",
#       description: "one",
#       title: "one",
#       tags: "one",
#       user_id: nil,
#       inserted_at: ~U[2024-05-20 09:19:22Z],
#       updated_at: ~U[2024-05-20 09:19:22Z]
#     },
#     patch: "/posts/cfff6258-bb87-4939-b53e-0488924628df",
#     __changed__: %{},
#     flash: %{},
#     myself: %Phoenix.LiveComponent.CID{cid: 1}
#   },
#   transport_pid: #PID<0.727.0>,
#   ...
# >
# ================= this is assign_form post =================
# #Ecto.Changeset<
#   action: :validate,
#   changes: %{title: "one ed"},
#   errors: [],
#   data: #ThatApp.Blogs.Post<>,
#   valid?: true
# >
# #Phoenix.LiveView.Socket<
#   id: "phx-F9EnqL2W0Wdi3gIB",
#   endpoint: ThatAppWeb.Endpoint,
#   view: ThatAppWeb.PostLive.Show,
#   parent_pid: nil,
#   root_pid: #PID<0.1093.0>,
#   router: ThatAppWeb.Router,
#   assigns: %{
#     id: "cfff6258-bb87-4939-b53e-0488924628df",
#     title: "Edit Post",
#     form: %Phoenix.HTML.Form{
#       source: #Ecto.Changeset<
#         action: :validate,
#         changes: %{title: "one e"},
#         errors: [],
#         data: #ThatApp.Blogs.Post<>,
#         valid?: true
#       >,
#       impl: Phoenix.HTML.FormData.Ecto.Changeset,
#       id: "post",
#       name: "post",
#       data: %ThatApp.Blogs.Post{
#         __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#         id: "cfff6258-bb87-4939-b53e-0488924628df",
#         description: "one",
#         title: "one",
#         tags: "one",
#         user_id: nil,
#         inserted_at: ~U[2024-05-20 09:19:22Z],
#         updated_at: ~U[2024-05-20 09:19:22Z]
#       },
#       action: :validate,
#       hidden: [id: "cfff6258-bb87-4939-b53e-0488924628df"],
#       params: %{"description" => "one", "tags" => "one", "title" => "one e"},
#       errors: [],
#       options: [method: "put"],
#       index: nil
#     },
#     action: :edit,
#     post: %ThatApp.Blogs.Post{
#       __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#       id: "cfff6258-bb87-4939-b53e-0488924628df",
#       description: "one",
#       title: "one",
#       tags: "one",
#       user_id: nil,
#       inserted_at: ~U[2024-05-20 09:19:22Z],
#       updated_at: ~U[2024-05-20 09:19:22Z]
#     },
#     patch: "/posts/cfff6258-bb87-4939-b53e-0488924628df",
#     __changed__: %{},
#     flash: %{},
#     myself: %Phoenix.LiveComponent.CID{cid: 1}
#   },
#   transport_pid: #PID<0.727.0>,
#   ...
# >
# ================= this is render save post =================
# [debug] Replied in 3ms
# %{
#   id: "cfff6258-bb87-4939-b53e-0488924628df",
#   socket: #Phoenix.LiveView.Socket<
#     id: "phx-F9EnqL2W0Wdi3gIB",
#     endpoint: ThatAppWeb.Endpoint,
#     view: ThatAppWeb.PostLive.Show,
#     parent_pid: nil,
#     root_pid: #PID<0.1093.0>,
#     router: ThatAppWeb.Router,
#     assigns: #Phoenix.LiveView.Socket.AssignsNotInSocket<>,
#     transport_pid: #PID<0.727.0>,
#     ...
#   >,
#   title: "Edit Post",
#   form: %Phoenix.HTML.Form{
#     source: #Ecto.Changeset<
#       action: :validate,
#       changes: %{title: "one ed"},
#       errors: [],
#       data: #ThatApp.Blogs.Post<>,
#       valid?: true
#     >,
#     impl: Phoenix.HTML.FormData.Ecto.Changeset,
#     id: "post",
#     name: "post",
#     data: %ThatApp.Blogs.Post{
#       __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#       id: "cfff6258-bb87-4939-b53e-0488924628df",
#       description: "one",
#       title: "one",
#       tags: "one",
#       user_id: nil,
#       inserted_at: ~U[2024-05-20 09:19:22Z],
#       updated_at: ~U[2024-05-20 09:19:22Z]
#     },
#     action: :validate,
#     hidden: [id: "cfff6258-bb87-4939-b53e-0488924628df"],
#     params: %{"description" => "one", "tags" => "one", "title" => "one ed"},
#     errors: [],
#     options: [method: "put"],
#     index: nil
#   },
#   action: :edit,
#   post: %ThatApp.Blogs.Post{
#     __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#     id: "cfff6258-bb87-4939-b53e-0488924628df",
#     description: "one",
#     title: "one",
#     tags: "one",
#     user_id: nil,
#     inserted_at: ~U[2024-05-20 09:19:22Z],
#     updated_at: ~U[2024-05-20 09:19:22Z]
#   },
#   patch: "/posts/cfff6258-bb87-4939-b53e-0488924628df",
#   __changed__: %{
#     form: %Phoenix.HTML.Form{
#       source: #Ecto.Changeset<
#         action: :validate,
#         changes: %{title: "one e"},
#         errors: [],
#         data: #ThatApp.Blogs.Post<>,
#         valid?: true
#       >,
#       impl: Phoenix.HTML.FormData.Ecto.Changeset,
#       id: "post",
#       name: "post",
#       data: %ThatApp.Blogs.Post{
#         __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#         id: "cfff6258-bb87-4939-b53e-0488924628df",
#         description: "one",
#         title: "one",
#         tags: "one",
#         user_id: nil,
#         inserted_at: ~U[2024-05-20 09:19:22Z],
#         updated_at: ~U[2024-05-20 09:19:22Z]
#       },
#       action: :validate,
#       hidden: [id: "cfff6258-bb87-4939-b53e-0488924628df"],
#       params: %{"description" => "one", "tags" => "one", "title" => "one e"},
#       errors: [],
#       options: [method: "put"],
#       index: nil
#     }
#   },
#   flash: %{},
#   myself: %Phoenix.LiveComponent.CID{cid: 1}
# }
# ================= this is handle_event save post =================
# [debug] HANDLE EVENT "save" in ThatAppWeb.PostLive.Show
#   Component: ThatAppWeb.PostLive.FormComponent
#   Parameters: %{"post" => %{"description" => "one", "tags" => "one", "title" => "one ed"}}
# %{"description" => "one", "tags" => "one", "title" => "one ed"}
# #Phoenix.LiveView.Socket<
#   id: "phx-F9EnqL2W0Wdi3gIB",
#   endpoint: ThatAppWeb.Endpoint,
#   view: ThatAppWeb.PostLive.Show,
#   parent_pid: nil,
#   root_pid: #PID<0.1093.0>,
#   router: ThatAppWeb.Router,
#   assigns: %{
#     id: "cfff6258-bb87-4939-b53e-0488924628df",
#     title: "Edit Post",
#     form: %Phoenix.HTML.Form{
#       source: #Ecto.Changeset<
#         action: :validate,
#         changes: %{title: "one ed"},
#         errors: [],
#         data: #ThatApp.Blogs.Post<>,
#         valid?: true
#       >,
#       impl: Phoenix.HTML.FormData.Ecto.Changeset,
#       id: "post",
#       name: "post",
#       data: %ThatApp.Blogs.Post{
#         __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#         id: "cfff6258-bb87-4939-b53e-0488924628df",
#         description: "one",
#         title: "one",
#         tags: "one",
#         user_id: nil,
#         inserted_at: ~U[2024-05-20 09:19:22Z],
#         updated_at: ~U[2024-05-20 09:19:22Z]
#       },
#       action: :validate,
#       hidden: [id: "cfff6258-bb87-4939-b53e-0488924628df"],
#       params: %{"description" => "one", "tags" => "one", "title" => "one ed"},
#       errors: [],
#       options: [method: "put"],
#       index: nil
#     },
#     action: :edit,
#     post: %ThatApp.Blogs.Post{
#       __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#       id: "cfff6258-bb87-4939-b53e-0488924628df",
#       description: "one",
#       title: "one",
#       tags: "one",
#       user_id: nil,
#       inserted_at: ~U[2024-05-20 09:19:22Z],
#       updated_at: ~U[2024-05-20 09:19:22Z]
#     },
#     patch: "/posts/cfff6258-bb87-4939-b53e-0488924628df",
#     __changed__: %{},
#     flash: %{},
#     myself: %Phoenix.LiveComponent.CID{cid: 1}
#   },
#   transport_pid: #PID<0.727.0>,
#   ...
# >
# ================= this is save_event edit post =================
# [error] GenServer #PID<0.1093.0> terminating
# ** (UndefinedFunctionError) function Io.inspect/1 is undefined (module Io is not available)
#     Io.inspect(:edit)
#     (that_app 0.1.0) lib/that_app_web/live/post_live/form_component.ex:70: ThatAppWeb.PostLive.FormComponent.save_post/3
#     (phoenix_live_view 0.20.14) lib/phoenix_live_view/channel.ex:734: anonymous fn/4 in Phoenix.LiveView.Channel.inner_component_handle_event/4
#     (telemetry 1.2.1) /home/liar/liars/that_app/deps/telemetry/src/telemetry.erl:321: :telemetry.span/3
#     (phoenix_live_view 0.20.14) lib/phoenix_live_view/diff.ex:209: Phoenix.LiveView.Diff.write_component/4
#     (phoenix_live_view 0.20.14) lib/phoenix_live_view/channel.ex:661: Phoenix.LiveView.Channel.component_handle/4
#     (stdlib 5.2.3) gen_server.erl:1095: :gen_server.try_handle_info/3
#     (stdlib 5.2.3) gen_server.erl:1183: :gen_server.handle_msg/6
#     (stdlib 5.2.3) proc_lib.erl:241: :proc_lib.init_p_do_apply/3
# Last message: %Phoenix.Socket.Message{topic: "lv:phx-F9EnqL2W0Wdi3gIB", event: "event", payload: %{"cid" => 1, "event" => "save", "type" => "form", "value" => "post%5Btitle%5D=one+ed&post%5Btags%5D=one&post%5Bdescription%5D=one"}, ref: "171", join_ref: "166"}
# State: %{socket: #Phoenix.LiveView.Socket<id: "phx-F9EnqL2W0Wdi3gIB", endpoint: ThatAppWeb.Endpoint, view: ThatAppWeb.PostLive.Show, parent_pid: nil, root_pid: #PID<0.1093.0>, router: ThatAppWeb.Router, assigns: %{post: %ThatApp.Blogs.Post{__meta__: #Ecto.Schema.Metadata<:loaded, "posts">, id: "cfff6258-bb87-4939-b53e-0488924628df", description: "one", title: "one", tags: "one", user_id: nil, inserted_at: ~U[2024-05-20 09:19:22Z], updated_at: ~U[2024-05-20 09:19:22Z]}, __changed__: %{}, page_title: "Edit Post", flash: %{}, live_action: :edit}, transport_pid: #PID<0.727.0>, ...>, components: {%{1 => {ThatAppWeb.PostLive.FormComponent, "cfff6258-bb87-4939-b53e-0488924628df", %{id: "cfff6258-bb87-4939-b53e-0488924628df", title: "Edit Post", form: %Phoenix.HTML.Form{source: #Ecto.Changeset<action: :validate, changes: %{title: "one ed"}, errors: [], data: #ThatApp.Blogs.Post<>, valid?: true>, impl: Phoenix.HTML.FormData.Ecto.Changeset, id: "post", name: "post", data: %ThatApp.Blogs.Post{__meta__: #Ecto.Schema.Metadata<:loaded, "posts">, id: "cfff6258-bb87-4939-b53e-0488924628df", description: "one", title: "one", tags: "one", user_id: nil, inserted_at: ~U[2024-05-20 09:19:22Z], updated_at: ~U[2024-05-20 09:19:22Z]}, action: :validate, hidden: [id: "cfff6258-bb87-4939-b53e-0488924628df"], params: %{"description" => "one", "tags" => "one", "title" => "one ed"}, errors: [], options: [method: "put"], index: nil}, action: :edit, post: %ThatApp.Blogs.Post{__meta__: #Ecto.Schema.Metadata<:loaded, "posts">, id: "cfff6258-bb87-4939-b53e-0488924628df", description: "one", title: "one", tags: "one", user_id: nil, inserted_at: ~U[2024-05-20 09:19:22Z], updated_at: ~U[2024-05-20 09:19:22Z]}, patch: "/posts/cfff6258-bb87-4939-b53e-0488924628df", __changed__: %{}, flash: %{}, myself: %Phoenix.LiveComponent.CID{cid: 1}}, %{live_temp: %{}, lifecycle: %Phoenix.LiveView.Lifecycle{after_render: [], handle_async: [], handle_event: [], handle_info: [], handle_params: [], mount: []}, root_view: ThatAppWeb.PostLive.Show, children_cids: []}, {317584324068273725318262321756466881526, %{0 => {129913521344013900437307151325315812233, %{1 => {233997063007080961856270903303917921054, %{}}, 2 => {192791172343770037778978249349782823967, %{0 => {189874606890076996017747194639897484376, %{}}}}}}, 1 => {201288759643648041960737882771866884573, %{0 => {156290168880912491643620919600331751167, %{3 => {173848314436077778849879996089780042402, %{0 => {189524960970849014830263058757653543771, %{0 => {333361833819798549196027895063149018134, %{1 => {15473295715008354310922595741131324000, %{1 => {159184156934940049462845695086240555033, %{}}}}}}, 1 => {333361833819798549196027895063149018134, %{1 => {15473295715008354310922595741131324000, %{1 => {159184156934940049462845695086240555033, %{}}}}}}, 2 => {333361833819798549196027895063149018134, %{1 => {15473295715008354310922595741131324000, %{1 => {159184156934940049462845695086240555033, %{}}}}}}}}, 1 => 242793902076835272961621420490506943479}}}}}}}}}}, %{ThatAppWeb.PostLive.FormComponent => %{"cfff6258-bb87-4939-b53e-0488924628df" => 1}}, 2}, topic: "lv:phx-F9EnqL2W0Wdi3gIB", serializer: Phoenix.Socket.V2.JSONSerializer, join_ref: "166", upload_names: %{}, upload_pids: %{}}
# _________________this is mount show _______________-
# [debug] MOUNT ThatAppWeb.PostLive.Show
#   Parameters: %{"id" => "cfff6258-bb87-4939-b53e-0488924628df"}
#   Session: %{"_csrf_token" => "gOAaM_uRu6xoAhuKagZEFX7z"}
# %{"id" => "cfff6258-bb87-4939-b53e-0488924628df"}
# %{"_csrf_token" => "gOAaM_uRu6xoAhuKagZEFX7z"}
# #Phoenix.LiveView.Socket<
#   id: "phx-F9EnqL2W0Wdi3gIB",
#   endpoint: ThatAppWeb.Endpoint,
#   view: ThatAppWeb.PostLive.Show,
#   parent_pid: nil,
#   root_pid: #PID<0.1167.0>,
#   router: ThatAppWeb.Router,
#   assigns: %{__changed__: %{}, flash: %{}, live_action: :edit},
#   transport_pid: #PID<0.727.0>,
#   ...
# >
# [debug] Replied in 855µs
# _________________this is handle_params show _______________-
# [debug] HANDLE PARAMS in ThatAppWeb.PostLive.Show
#   Parameters: %{"id" => "cfff6258-bb87-4939-b53e-0488924628df"}
# #Phoenix.LiveView.Socket<
#   id: "phx-F9EnqL2W0Wdi3gIB",
#   endpoint: ThatAppWeb.Endpoint,
#   view: ThatAppWeb.PostLive.Show,
#   parent_pid: nil,
#   root_pid: #PID<0.1167.0>,
#   router: ThatAppWeb.Router,
#   assigns: %{__changed__: %{}, flash: %{}, live_action: :edit},
#   transport_pid: #PID<0.727.0>,
#   ...
# >
# [debug] QUERY OK source="posts" db=2.1ms idle=1439.1ms
# SELECT p0."id", p0."description", p0."title", p0."tags", p0."user_id", p0."inserted_at", p0."updated_at" FROM "posts" AS p0 WHERE (p0."id" = $1) ["cfff6258-bb87-4939-b53e-0488924628df"]
# ↳ ThatAppWeb.PostLive.Show.handle_params/3, at: lib/that_app_web/live/post_live/show.ex:22
# [debug] Replied in 3ms
# ================= this is update post =================
# %{
#   id: "cfff6258-bb87-4939-b53e-0488924628df",
#   title: "Edit Post",
#   action: :edit,
#   post: %ThatApp.Blogs.Post{
#     __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#     id: "cfff6258-bb87-4939-b53e-0488924628df",
#     description: "one",
#     title: "one",
#     tags: "one",
#     user_id: nil,
#     inserted_at: ~U[2024-05-20 09:19:22Z],
#     updated_at: ~U[2024-05-20 09:19:22Z]
#   },
#   patch: "/posts/cfff6258-bb87-4939-b53e-0488924628df"
# }
# #Phoenix.LiveView.Socket<
#   id: "phx-F9EnqL2W0Wdi3gIB",
#   endpoint: ThatAppWeb.Endpoint,
#   view: ThatAppWeb.PostLive.Show,
#   parent_pid: nil,
#   root_pid: #PID<0.1167.0>,
#   router: ThatAppWeb.Router,
#   assigns: %{
#     __changed__: %{flash: true},
#     flash: %{},
#     myself: %Phoenix.LiveComponent.CID{cid: 1}
#   },
#   transport_pid: #PID<0.727.0>,
#   ...
# >
# ================= this is assign_form post =================
# #Ecto.Changeset<action: nil, changes: %{}, errors: [],
#  data: #ThatApp.Blogs.Post<>, valid?: true>
# #Phoenix.LiveView.Socket<
#   id: "phx-F9EnqL2W0Wdi3gIB",
#   endpoint: ThatAppWeb.Endpoint,
#   view: ThatAppWeb.PostLive.Show,
#   parent_pid: nil,
#   root_pid: #PID<0.1167.0>,
#   router: ThatAppWeb.Router,
#   assigns: %{
#     id: "cfff6258-bb87-4939-b53e-0488924628df",
#     title: "Edit Post",
#     action: :edit,
#     post: %ThatApp.Blogs.Post{
#       __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#       id: "cfff6258-bb87-4939-b53e-0488924628df",
#       description: "one",
#       title: "one",
#       tags: "one",
#       user_id: nil,
#       inserted_at: ~U[2024-05-20 09:19:22Z],
#       updated_at: ~U[2024-05-20 09:19:22Z]
#     },
#     patch: "/posts/cfff6258-bb87-4939-b53e-0488924628df",
#     __changed__: %{
#       id: true,
#       title: true,
#       action: true,
#       post: true,
#       patch: true,
#       flash: true
#     },
#     flash: %{},
#     myself: %Phoenix.LiveComponent.CID{cid: 1}
#   },
#   transport_pid: #PID<0.727.0>,
#   ...
# >
# ================= this is render save post =================
# %{
#   id: "cfff6258-bb87-4939-b53e-0488924628df",
#   socket: #Phoenix.LiveView.Socket<
#     id: "phx-F9EnqL2W0Wdi3gIB",
#     endpoint: ThatAppWeb.Endpoint,
#     view: ThatAppWeb.PostLive.Show,
#     parent_pid: nil,
#     root_pid: #PID<0.1167.0>,
#     router: ThatAppWeb.Router,
#     assigns: #Phoenix.LiveView.Socket.AssignsNotInSocket<>,
#     transport_pid: #PID<0.727.0>,
#     ...
#   >,
#   title: "Edit Post",
#   form: %Phoenix.HTML.Form{
#     source: #Ecto.Changeset<action: nil, changes: %{}, errors: [],
#      data: #ThatApp.Blogs.Post<>, valid?: true>,
#     impl: Phoenix.HTML.FormData.Ecto.Changeset,
#     id: "post",
#     name: "post",
#     data: %ThatApp.Blogs.Post{
#       __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#       id: "cfff6258-bb87-4939-b53e-0488924628df",
#       description: "one",
#       title: "one",
#       tags: "one",
#       user_id: nil,
#       inserted_at: ~U[2024-05-20 09:19:22Z],
#       updated_at: ~U[2024-05-20 09:19:22Z]
#     },
#     action: nil,
#     hidden: [id: "cfff6258-bb87-4939-b53e-0488924628df"],
#     params: %{},
#     errors: [],
#     options: [method: "put"],
#     index: nil
#   },
#   action: :edit,
#   post: %ThatApp.Blogs.Post{
#     __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#     id: "cfff6258-bb87-4939-b53e-0488924628df",
#     description: "one",
#     title: "one",
#     tags: "one",
#     user_id: nil,
#     inserted_at: ~U[2024-05-20 09:19:22Z],
#     updated_at: ~U[2024-05-20 09:19:22Z]
#   },
#   patch: "/posts/cfff6258-bb87-4939-b53e-0488924628df",
#   __changed__: %{
#     id: true,
#     title: true,
#     form: true,
#     action: true,
#     post: true,
#     patch: true,
#     flash: true
#   },
#   flash: %{},
#   myself: %Phoenix.LiveComponent.CID{cid: 1}
# }
# ================= this is handle event validate post  =================
# [debug] HANDLE EVENT "validate" in ThatAppWeb.PostLive.Show
#   Component: ThatAppWeb.PostLive.FormComponent
#   Parameters: %{"_target" => ["post", "title"], "post" => %{"description" => "one", "tags" => "one", "title" => "one ed"}}
# %{"description" => "one", "tags" => "one", "title" => "one ed"}
# #Phoenix.LiveView.Socket<
#   id: "phx-F9EnqL2W0Wdi3gIB",
#   endpoint: ThatAppWeb.Endpoint,
#   view: ThatAppWeb.PostLive.Show,
#   parent_pid: nil,
#   root_pid: #PID<0.1167.0>,
#   router: ThatAppWeb.Router,
#   assigns: %{
#     id: "cfff6258-bb87-4939-b53e-0488924628df",
#     title: "Edit Post",
#     form: %Phoenix.HTML.Form{
#       source: #Ecto.Changeset<action: nil, changes: %{}, errors: [],
#        data: #ThatApp.Blogs.Post<>, valid?: true>,
#       impl: Phoenix.HTML.FormData.Ecto.Changeset,
#       id: "post",
#       name: "post",
#       data: %ThatApp.Blogs.Post{
#         __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#         id: "cfff6258-bb87-4939-b53e-0488924628df",
#         description: "one",
#         title: "one",
#         tags: "one",
#         user_id: nil,
#         inserted_at: ~U[2024-05-20 09:19:22Z],
#         updated_at: ~U[2024-05-20 09:19:22Z]
#       },
#       action: nil,
#       hidden: [id: "cfff6258-bb87-4939-b53e-0488924628df"],
#       params: %{},
#       errors: [],
#       options: [method: "put"],
#       index: nil
#     },
#     action: :edit,
#     post: %ThatApp.Blogs.Post{
#       __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#       id: "cfff6258-bb87-4939-b53e-0488924628df",
#       description: "one",
#       title: "one",
#       tags: "one",
#       user_id: nil,
#       inserted_at: ~U[2024-05-20 09:19:22Z],
#       updated_at: ~U[2024-05-20 09:19:22Z]
#     },
#     patch: "/posts/cfff6258-bb87-4939-b53e-0488924628df",
#     __changed__: %{},
#     flash: %{},
#     myself: %Phoenix.LiveComponent.CID{cid: 1}
#   },
#   transport_pid: #PID<0.727.0>,
#   ...
# >
# ================= this is assign_form post =================
# #Ecto.Changeset<
#   action: :validate,
#   changes: %{title: "one ed"},
#   errors: [],
#   data: #ThatApp.Blogs.Post<>,
#   valid?: true
# >
# #Phoenix.LiveView.Socket<
#   id: "phx-F9EnqL2W0Wdi3gIB",
#   endpoint: ThatAppWeb.Endpoint,
#   view: ThatAppWeb.PostLive.Show,
#   parent_pid: nil,
#   root_pid: #PID<0.1167.0>,
#   router: ThatAppWeb.Router,
#   assigns: %{
#     id: "cfff6258-bb87-4939-b53e-0488924628df",
#     title: "Edit Post",
#     form: %Phoenix.HTML.Form{
#       source: #Ecto.Changeset<action: nil, changes: %{}, errors: [],
#        data: #ThatApp.Blogs.Post<>, valid?: true>,
#       impl: Phoenix.HTML.FormData.Ecto.Changeset,
#       id: "post",
#       name: "post",
#       data: %ThatApp.Blogs.Post{
#         __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#         id: "cfff6258-bb87-4939-b53e-0488924628df",
#         description: "one",
#         title: "one",
#         tags: "one",
#         user_id: nil,
#         inserted_at: ~U[2024-05-20 09:19:22Z],
#         updated_at: ~U[2024-05-20 09:19:22Z]
#       },
#       action: nil,
#       hidden: [id: "cfff6258-bb87-4939-b53e-0488924628df"],
#       params: %{},
#       errors: [],
#       options: [method: "put"],
#       index: nil
#     },
#     action: :edit,
#     post: %ThatApp.Blogs.Post{
#       __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#       id: "cfff6258-bb87-4939-b53e-0488924628df",
#       description: "one",
#       title: "one",
#       tags: "one",
#       user_id: nil,
#       inserted_at: ~U[2024-05-20 09:19:22Z],
#       updated_at: ~U[2024-05-20 09:19:22Z]
#     },
#     patch: "/posts/cfff6258-bb87-4939-b53e-0488924628df",
#     __changed__: %{},
#     flash: %{},
#     myself: %Phoenix.LiveComponent.CID{cid: 1}
#   },
#   transport_pid: #PID<0.727.0>,
#   ...
# >
# ================= this is render save post =================
# [debug] Replied in 2ms
# %{
#   id: "cfff6258-bb87-4939-b53e-0488924628df",
#   socket: #Phoenix.LiveView.Socket<
#     id: "phx-F9EnqL2W0Wdi3gIB",
#     endpoint: ThatAppWeb.Endpoint,
#     view: ThatAppWeb.PostLive.Show,
#     parent_pid: nil,
#     root_pid: #PID<0.1167.0>,
#     router: ThatAppWeb.Router,
#     assigns: #Phoenix.LiveView.Socket.AssignsNotInSocket<>,
#     transport_pid: #PID<0.727.0>,
#     ...
#   >,
#   title: "Edit Post",
#   form: %Phoenix.HTML.Form{
#     source: #Ecto.Changeset<
#       action: :validate,
#       changes: %{title: "one ed"},
#       errors: [],
#       data: #ThatApp.Blogs.Post<>,
#       valid?: true
#     >,
#     impl: Phoenix.HTML.FormData.Ecto.Changeset,
#     id: "post",
#     name: "post",
#     data: %ThatApp.Blogs.Post{
#       __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#       id: "cfff6258-bb87-4939-b53e-0488924628df",
#       description: "one",
#       title: "one",
#       tags: "one",
#       user_id: nil,
#       inserted_at: ~U[2024-05-20 09:19:22Z],
#       updated_at: ~U[2024-05-20 09:19:22Z]
#     },
#     action: :validate,
#     hidden: [id: "cfff6258-bb87-4939-b53e-0488924628df"],
#     params: %{"description" => "one", "tags" => "one", "title" => "one ed"},
#     errors: [],
#     options: [method: "put"],
#     index: nil
#   },
#   action: :edit,
#   post: %ThatApp.Blogs.Post{
#     __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#     id: "cfff6258-bb87-4939-b53e-0488924628df",
#     description: "one",
#     title: "one",
#     tags: "one",
#     user_id: nil,
#     inserted_at: ~U[2024-05-20 09:19:22Z],
#     updated_at: ~U[2024-05-20 09:19:22Z]
#   },
#   patch: "/posts/cfff6258-bb87-4939-b53e-0488924628df",
#   __changed__: %{
#     form: %Phoenix.HTML.Form{
#       source: #Ecto.Changeset<action: nil, changes: %{}, errors: [],
#        data: #ThatApp.Blogs.Post<>, valid?: true>,
#       impl: Phoenix.HTML.FormData.Ecto.Changeset,
#       id: "post",
#       name: "post",
#       data: %ThatApp.Blogs.Post{
#         __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#         id: "cfff6258-bb87-4939-b53e-0488924628df",
#         description: "one",
#         title: "one",
#         tags: "one",
#         user_id: nil,
#         inserted_at: ~U[2024-05-20 09:19:22Z],
#         updated_at: ~U[2024-05-20 09:19:22Z]
#       },
#       action: nil,
#       hidden: [id: "cfff6258-bb87-4939-b53e-0488924628df"],
#       params: %{},
#       errors: [],
#       options: [method: "put"],
#       index: nil
#     }
#   },
#   flash: %{},
#   myself: %Phoenix.LiveComponent.CID{cid: 1}
# }
# _________________this is handle_params show _______________-
# [debug] HANDLE PARAMS in ThatAppWeb.PostLive.Show
#   Parameters: %{"id" => "cfff6258-bb87-4939-b53e-0488924628df"}
# #Phoenix.LiveView.Socket<
#   id: "phx-F9EnqL2W0Wdi3gIB",
#   endpoint: ThatAppWeb.Endpoint,
#   view: ThatAppWeb.PostLive.Show,
#   parent_pid: nil,
#   root_pid: #PID<0.1167.0>,
#   router: ThatAppWeb.Router,
#   assigns: %{
#     post: %ThatApp.Blogs.Post{
#       __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#       id: "cfff6258-bb87-4939-b53e-0488924628df",
#       description: "one",
#       title: "one",
#       tags: "one",
#       user_id: nil,
#       inserted_at: ~U[2024-05-20 09:19:22Z],
#       updated_at: ~U[2024-05-20 09:19:22Z]
#     },
#     __changed__: %{live_action: true},
#     page_title: "Edit Post",
#     flash: %{},
#     live_action: :show
#   },
#   transport_pid: #PID<0.727.0>,
#   ...
# >
# [debug] QUERY OK source="posts" db=0.4ms idle=1161.8ms
# SELECT p0."id", p0."description", p0."title", p0."tags", p0."user_id", p0."inserted_at", p0."updated_at" FROM "posts" AS p0 WHERE (p0."id" = $1) ["cfff6258-bb87-4939-b53e-0488924628df"]
# ↳ ThatAppWeb.PostLive.Show.handle_params/3, at: lib/that_app_web/live/post_live/show.ex:22
# [debug] Replied in 2ms
# ----------this is mount--------
# [debug] MOUNT ThatAppWeb.PostLive.Index
#   Parameters: %{}
#   Session: %{"_csrf_token" => "gOAaM_uRu6xoAhuKagZEFX7z"}
# %{}
# #Phoenix.LiveView.Socket<
#   id: "phx-F9EnqL2W0Wdi3gIB",
#   endpoint: ThatAppWeb.Endpoint,
#   view: ThatAppWeb.PostLive.Index,
#   parent_pid: nil,
#   root_pid: #PID<0.1222.0>,
#   router: ThatAppWeb.Router,
#   assigns: %{__changed__: %{}, flash: %{}, live_action: :index},
#   transport_pid: #PID<0.727.0>,
#   ...
# >
# [debug] QUERY OK source="posts" db=0.4ms idle=1706.9ms
# SELECT p0."id", p0."description", p0."title", p0."tags", p0."user_id", p0."inserted_at", p0."updated_at" FROM "posts" AS p0 []
# ↳ ThatAppWeb.PostLive.Index.mount/3, at: lib/that_app_web/live/post_live/index.ex:12
# ----------this is handle params --------
# [debug] Replied in 1ms
# %{}
# [debug] HANDLE PARAMS in ThatAppWeb.PostLive.Index
#   Parameters: %{}
# #Phoenix.LiveView.Socket<
#   id: "phx-F9EnqL2W0Wdi3gIB",
#   endpoint: ThatAppWeb.Endpoint,
#   view: ThatAppWeb.PostLive.Index,
#   parent_pid: nil,
#   root_pid: #PID<0.1222.0>,
#   router: ThatAppWeb.Router,
#   assigns: %{
#     __changed__: %{streams: true},
#     flash: %{},
#     live_action: :index,
#     streams: %{
#       __changed__: MapSet.new([:posts]),
#       posts: %Phoenix.LiveView.LiveStream{
#         name: :posts,
#         dom_id: #Function<3.53432546/1 in Phoenix.LiveView.LiveStream.new/4>,
#         ref: "0",
#         inserts: [
#           {"posts-68528957-8f2a-4312-94a0-3ab16d771db1", -1,
#            %ThatApp.Blogs.Post{
#              __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#              id: "68528957-8f2a-4312-94a0-3ab16d771db1",
#              description: "new",
#              title: "title",
#              tags: "new",
#              user_id: nil,
#              inserted_at: ~U[2024-05-19 16:09:18Z],
#              updated_at: ~U[2024-05-19 16:09:36Z]
#            }, nil},
#           {"posts-cfff6258-bb87-4939-b53e-0488924628df", -1,
#            %ThatApp.Blogs.Post{
#              __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#              id: "cfff6258-bb87-4939-b53e-0488924628df",
#              description: "one",
#              title: "one",
#              tags: "one",
#              user_id: nil,
#              inserted_at: ~U[2024-05-20 09:19:22Z],
#              updated_at: ~U[2024-05-20 09:19:22Z]
#            }, nil}
#         ],
#         deletes: [],
#         reset?: false,
#         consumable?: false
#       },
#       __configured__: %{},
#       __ref__: 1
#     }
#   },
#   transport_pid: #PID<0.727.0>,
#   ...
# >
# ----------this is apply_action_index  user--------
# :index
# #Phoenix.LiveView.Socket<
#   id: "phx-F9EnqL2W0Wdi3gIB",
#   endpoint: ThatAppWeb.Endpoint,
#   view: ThatAppWeb.PostLive.Index,
#   parent_pid: nil,
#   root_pid: #PID<0.1222.0>,
#   router: ThatAppWeb.Router,
#   assigns: %{
#     __changed__: %{streams: true},
#     flash: %{},
#     live_action: :index,
#     streams: %{
#       __changed__: MapSet.new([:posts]),
#       posts: %Phoenix.LiveView.LiveStream{
#         name: :posts,
#         dom_id: #Function<3.53432546/1 in Phoenix.LiveView.LiveStream.new/4>,
#         ref: "0",
#         inserts: [
#           {"posts-68528957-8f2a-4312-94a0-3ab16d771db1", -1,
#            %ThatApp.Blogs.Post{
#              __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#              id: "68528957-8f2a-4312-94a0-3ab16d771db1",
#              description: "new",
#              title: "title",
#              tags: "new",
#              user_id: nil,
#              inserted_at: ~U[2024-05-19 16:09:18Z],
#              updated_at: ~U[2024-05-19 16:09:36Z]
#            }, nil},
#           {"posts-cfff6258-bb87-4939-b53e-0488924628df", -1,
#            %ThatApp.Blogs.Post{
#              __meta__: #Ecto.Schema.Metadata<:loaded, "posts">,
#              id: "cfff6258-bb87-4939-b53e-0488924628df",
#              description: "one",
#              title: "one",
#              tags: "one",
#              user_id: nil,
#              inserted_at: ~U[2024-05-20 09:19:22Z],
#              updated_at: ~U[2024-05-20 09:19:22Z]
#            }, nil}
#         ],
#         deletes: [],
#         reset?: false,
#         consumable?: false
#       },
#       __configured__: %{},
#       __ref__: 1
#     }
#   },
#   transport_pid: #PID<0.727.0>,
#   ...
# >
# [debug] Replied in 2ms
# ----------this is handle event user--------
# [debug] HANDLE EVENT "delete" in ThatAppWeb.PostLive.Index
#   Parameters: %{"id" => "cfff6258-bb87-4939-b53e-0488924628df"}
# "cfff6258-bb87-4939-b53e-0488924628df"
# #Phoenix.LiveView.Socket<
#   id: "phx-F9EnqL2W0Wdi3gIB",
#   endpoint: ThatAppWeb.Endpoint,
#   view: ThatAppWeb.PostLive.Index,
#   parent_pid: nil,
#   root_pid: #PID<0.1222.0>,
#   router: ThatAppWeb.Router,
#   assigns: %{
#     post: nil,
#     __changed__: %{},
#     page_title: "Listing Posts",
#     flash: %{},
#     live_action: :index,
#     streams: %{
#       __changed__: MapSet.new([]),
#       posts: %Phoenix.LiveView.LiveStream{
#         name: :posts,
#         dom_id: #Function<3.53432546/1 in Phoenix.LiveView.LiveStream.new/4>,
#         ref: "0",
#         inserts: [],
#         deletes: [],
#         reset?: false,
#         consumable?: false
#       },
#       __configured__: %{},
#       __ref__: 1
#     }
#   },
#   transport_pid: #PID<0.727.0>,
#   ...
# >
# [debug] QUERY OK source="posts" db=0.6ms idle=1776.2ms
# SELECT p0."id", p0."description", p0."title", p0."tags", p0."user_id", p0."inserted_at", p0."updated_at" FROM "posts" AS p0 WHERE (p0."id" = $1) ["cfff6258-bb87-4939-b53e-0488924628df"]
# ↳ ThatAppWeb.PostLive.Index.handle_event/3, at: lib/that_app_web/live/post_live/index.ex:63
# [debug] QUERY OK source="posts" db=7.6ms queue=1.3ms idle=1777.2ms
# DELETE FROM "posts" WHERE "id" = $1 ["cfff6258-bb87-4939-b53e-0488924628df"]
# ↳ ThatAppWeb.PostLive.Index.handle_event/3, at: lib/that_app_web/live/post_live/index.ex:64
# [debug] Replied in 11ms
# iex(1)>
