class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786797499-g9ca5b3"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786797499-g9ca5b3/amp-darwin-arm64"
      sha256 "e905a1a1a066d39d7ce7deb3ab2a5174beedd24efb347fbfec4185049c6839c9"
    else
      url "https://static.ampcode.com/cli/0.0.1786797499-g9ca5b3/amp-darwin-x64"
      sha256 "b68fe6f016c3affed60b0ea6ed3ed30655ec87992e2a08a453e369b750a11359"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786797499-g9ca5b3/amp-linux-arm64"
      sha256 "f3a755bfad75e3b43d68bb78875b06d028dedc650ecc3eecdd94343cf484273b"
    else
      url "https://static.ampcode.com/cli/0.0.1786797499-g9ca5b3/amp-linux-x64"
      sha256 "116fb2dd570b4b8fdf7d45cc9606dd2087eae51f96b18a12804576b3e5dbf061"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
