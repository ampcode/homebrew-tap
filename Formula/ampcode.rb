class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771761706-g90e036"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771761706-g90e036/amp-darwin-arm64"
      sha256 "f20c9b6a4f081e0456ae094a93af02ee1a3ec1db789dc905584e0008166f1307"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771761706-g90e036/amp-darwin-x64"
      sha256 "5d7574a004b75f5d4399574042399fa016922af1808f1327387ca4c9762199ef"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771761706-g90e036/amp-linux-arm64"
      sha256 "9c508fabb31153a8624200cf2eb86dd2667f2ee7446cf6238610b4ee578bc1b5"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771761706-g90e036/amp-linux-x64"
      sha256 "ba3f1ec7bd1ecb43ae0cc50f605f517bbed8c8f90620f88c6e7a177e2f75bcee"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
