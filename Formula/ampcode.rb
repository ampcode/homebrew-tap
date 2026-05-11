class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778480938-g8f4336"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778480938-g8f4336/amp-darwin-arm64"
      sha256 "d0eb044722f9f8e9d4a21d0974c3010a08a2e368a41c3a1c9b99cf2f9b6782bb"
    else
      url "https://static.ampcode.com/cli/0.0.1778480938-g8f4336/amp-darwin-x64"
      sha256 "cf170e01a62610492c5f27dfd66a56907223bac68e1c940a4fa78adc2a671d5c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778480938-g8f4336/amp-linux-arm64"
      sha256 "6e0a949a8db6fe60f7f2cfff0134af5c07a9041b73c4e25c7f13dc2e9be49c89"
    else
      url "https://static.ampcode.com/cli/0.0.1778480938-g8f4336/amp-linux-x64"
      sha256 "0cfef01ded18e6a76d083ec9e5ef7d57f88d9a8da6cdaac2cf3c1c24296558b4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
