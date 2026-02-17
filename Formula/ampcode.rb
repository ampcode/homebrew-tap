class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771316637-gb5a7d5"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771316637-gb5a7d5/amp-darwin-arm64"
      sha256 "b5a9956acbe5e92da8102f33276b9234a000569607f4c84cc5012b16bf73e931"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771316637-gb5a7d5/amp-darwin-x64"
      sha256 "73e3ffa2c2defb3b2b0ad62c1c1107dc454d746c1123af4ad588b8fe9fb0d93a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771316637-gb5a7d5/amp-linux-arm64"
      sha256 "e52727ba6aba6d30df746df8ed7b5cff0a54b82bbc429e4582eea74ffd8ab0fd"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771316637-gb5a7d5/amp-linux-x64"
      sha256 "5cf8cbe660bc2d2e3708a2a25478b571c39f62717b4abd747c5296ea2785e99c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
