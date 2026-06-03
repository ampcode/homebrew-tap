class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780510973-g25201b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780510973-g25201b/amp-darwin-arm64"
      sha256 "d81619f442bfe4a306b83b49ff9d08832cbf0162f40c978c3db8b4bfaf93b62f"
    else
      url "https://static.ampcode.com/cli/0.0.1780510973-g25201b/amp-darwin-x64"
      sha256 "5d54b6688cd28953661c0d2adcc50ee1af715803e5cbb43537b7965721d0a7e5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780510973-g25201b/amp-linux-arm64"
      sha256 "784187a1edf4824cffbb7d736ac362e01dda34efd4249298812c077cf5b2a309"
    else
      url "https://static.ampcode.com/cli/0.0.1780510973-g25201b/amp-linux-x64"
      sha256 "d9e9520a0122168ba4cb368a0bce3d192fcb73c8ac34bec430f6dc8f7dc49fcc"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
