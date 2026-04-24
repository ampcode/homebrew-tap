class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777025880-gd05212"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777025880-gd05212/amp-darwin-arm64"
      sha256 "4ba66e665105236d8e0eeee34fcc049dd148abf02684e37a39bef3912c699e6f"
    else
      url "https://static.ampcode.com/cli/0.0.1777025880-gd05212/amp-darwin-x64"
      sha256 "cfe9c5a0fe8e1e5f56d4091055f60cb245c1f9e9347c3bfc7b9526453a7912f8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777025880-gd05212/amp-linux-arm64"
      sha256 "da84da976b9de51eba3d7b8cb0cc2cea3258d39a06a370faf5c6dafa30381d36"
    else
      url "https://static.ampcode.com/cli/0.0.1777025880-gd05212/amp-linux-x64"
      sha256 "ec8a692dd4a5fbb63b85ab94a6d186aaf8ff29b301b9210a35e5e3b800a100ef"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
