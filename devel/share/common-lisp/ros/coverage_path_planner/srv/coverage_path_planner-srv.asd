
(cl:in-package :asdf)

(defsystem "coverage_path_planner-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :nav_msgs-msg
)
  :components ((:file "_package")
    (:file "GetPathInZone" :depends-on ("_package_GetPathInZone"))
    (:file "_package_GetPathInZone" :depends-on ("_package"))
  ))