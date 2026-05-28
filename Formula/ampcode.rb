class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779945647-g362e01"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779945647-g362e01/amp-darwin-arm64"
      sha256 "d3d1627f564fc509467dbbf7a838be87248250b619ab3f36eb1fb91373f6f614"
    else
      url "https://static.ampcode.com/cli/0.0.1779945647-g362e01/amp-darwin-x64"
      sha256 "3bebfe037fee7fb181c38357bf5b5ea6ae7b7ef41fda1aedb600feae9e1e0e3f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779945647-g362e01/amp-linux-arm64"
      sha256 "d4fe1ccf4fcf731aead3cb601e2a62a59cb1c6259cb54ff697c0c46be92453db"
    else
      url "https://static.ampcode.com/cli/0.0.1779945647-g362e01/amp-linux-x64"
      sha256 "ea9136561bf70ee20a89ff92eb9921480eff2c27f1915177bd142d30f93d029e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
