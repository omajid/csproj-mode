
(require 'ert)
(require 'csproj-mode)

(ert-deftest csproj-mode-is-the-default-mode-for-csproj-files ()
  (find-file  "test.csproj")
  (should (equal major-mode 'csproj-mode)))

(ert-deftest csproj-mode-is-the-default-mode-for-vbproj-files ()
  (find-file  "test.vbproj")
  (should (equal major-mode 'csproj-mode)))

(ert-deftest csproj-mode-is-the-default-mode-for-proj-files ()
  (find-file  "test.proj")
  (should (equal major-mode 'csproj-mode)))

(ert-deftest csproj-mode-is-not-the-default-mode-for-xml-files ()
  (find-file  "Hello.xml")
  (should-not (equal major-mode 'csproj-mode)))
