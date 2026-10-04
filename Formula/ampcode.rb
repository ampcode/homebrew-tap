class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791107882-gfe04cc"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791107882-gfe04cc/amp-darwin-arm64"
      sha256 "ad440cd0a87c452bc1f0900d6809f1455e6d7de0470cad7e06441603f020d4cd"
    else
      url "https://static.ampcode.com/cli/0.0.1791107882-gfe04cc/amp-darwin-x64"
      sha256 "9e9a4fbfde9a18e42d6f96a651f724648c81faa2af547a5f089e08441e345869"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791107882-gfe04cc/amp-linux-arm64"
      sha256 "d858a05b78c6829c0d8dd65ea331dd52e8ca393988ef7c950cd47c9a5942af38"
    else
      url "https://static.ampcode.com/cli/0.0.1791107882-gfe04cc/amp-linux-x64"
      sha256 "5a39c4afe4fa845a3e0ce6b5b962aa928744bf5275a0f948c7defc3e09092d52"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
