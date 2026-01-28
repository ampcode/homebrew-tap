class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769587291-gc70924"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "/0.0.1769587291-gc70924/amp-darwin-arm64"
      sha256 "26ef5efbc8e8248c9427cd387498f3eb0dc767617c2090a6b81362ec0802af6f"
    else
      url "/0.0.1769587291-gc70924/amp-darwin-x64"
      sha256 "3a5164bdf957a2349f305d727d844c9094460943ebd91c95f48026a8ba4f4e24"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "/0.0.1769587291-gc70924/amp-linux-arm64"
      sha256 "36969b612487243fee68a60f00bd8f4f6b3a45d972924e1dd67f6d5580839025"
    else
      url "/0.0.1769587291-gc70924/amp-linux-x64"
      sha256 "eb822106a990292c3c9ac1611289c7fbdf870064bb8d2eafbacb9c3a15fa20f2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
