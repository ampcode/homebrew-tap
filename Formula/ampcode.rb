class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769487491-gc79c89"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769487491-gc79c89/amp-darwin-arm64"
      sha256 "13d463d85af34e1ac6511995d7fcc0fd452c8937ca1b13b6623d4fa8271b2c11"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769487491-gc79c89/amp-darwin-x64"
      sha256 "56f62e41ebd1c9c880c84932afe73376c45fb9302f18afe0b87b0c67f7370bea"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769487491-gc79c89/amp-linux-arm64"
      sha256 "99123908c150f096cc169e0f54d68e8f918d2eece5c8e3559b3faa68dbba9c34"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769487491-gc79c89/amp-linux-x64"
      sha256 "0eb3be475157162fb775b587cc06786fb340286fc7256104f867e9a22c0d4b0a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
