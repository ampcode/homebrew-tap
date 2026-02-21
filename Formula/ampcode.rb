class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771632254-g25cf30"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771632254-g25cf30/amp-darwin-arm64"
      sha256 "a512bdf1bdb3938de602bc82f1ed7dc0eb951246fd62507596d852d4a53aa123"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771632254-g25cf30/amp-darwin-x64"
      sha256 "d83a6dab97a8a0175805e3eea468833d35030a67523697e6757f3ec1b562718e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771632254-g25cf30/amp-linux-arm64"
      sha256 "be32e724128474d837c674f9a3ffdc86521b0e1d4faf3dc7e9a2c3d2d0899dfe"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771632254-g25cf30/amp-linux-x64"
      sha256 "ac16548a3d0dbb799f4cb166dea4846dee2d0c0b24f5216d6feecc9ab1856838"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
