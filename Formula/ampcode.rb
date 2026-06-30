class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782805232-gef29fb"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782805232-gef29fb/amp-darwin-arm64"
      sha256 "4470e567b3abddecd5147e425ec02cf53bf44c0bb2efd377c6a1de6680efc0f7"
    else
      url "https://static.ampcode.com/cli/0.0.1782805232-gef29fb/amp-darwin-x64"
      sha256 "c009f1a61f3984b2eb709c7fc2d803753502599b10f42143f9390ed3fba8f952"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782805232-gef29fb/amp-linux-arm64"
      sha256 "6eac729105ef9b3e121ad6a8454593eba434a5a8503a1252408baacdce26074a"
    else
      url "https://static.ampcode.com/cli/0.0.1782805232-gef29fb/amp-linux-x64"
      sha256 "3680f820a1dd4c401d3f062bb075587ca9e05b170d5a712f93de2cb7bbd4d57c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
