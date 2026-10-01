class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790841738-gdcaf74"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790841738-gdcaf74/amp-darwin-arm64"
      sha256 "c49e2aff4eb6b14b6d0884da78bd619e3b6f8f35dff5ebd5fd47022e3f03ed58"
    else
      url "https://static.ampcode.com/cli/0.0.1790841738-gdcaf74/amp-darwin-x64"
      sha256 "dbea5f0fb6c6e2bc8df192ce757522dafd7420d8e1ba4e64b61eeb7319bc564a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790841738-gdcaf74/amp-linux-arm64"
      sha256 "6b523bde6ec45145004fe3079d71f7856e71d4adaef3ef11b82fa84c5c4690af"
    else
      url "https://static.ampcode.com/cli/0.0.1790841738-gdcaf74/amp-linux-x64"
      sha256 "02f1cc72b62d9dd93b3cbd7f964b2c14774a1c5c9dd7076e6a159be956d61ed5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
