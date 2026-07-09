class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783587756-gbe085c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783587756-gbe085c/amp-darwin-arm64"
      sha256 "f9b945f02e933cb2b263cbf45bd4d2641b868f4e903fe83189311b9f67816374"
    else
      url "https://static.ampcode.com/cli/0.0.1783587756-gbe085c/amp-darwin-x64"
      sha256 "9e15e7f2c171ef6c630af2b20a25464f8dc33b1e8e703553a7abe3ea196f25da"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783587756-gbe085c/amp-linux-arm64"
      sha256 "5b15b1fc00d9037541edd0dfe0c8d9fe9f03a51f742f1337c8c58bc5c9d36c50"
    else
      url "https://static.ampcode.com/cli/0.0.1783587756-gbe085c/amp-linux-x64"
      sha256 "7ddb73c2415ad342fd51f2958bee43c495eb7ce88e6806b79d026652c2686799"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
