class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778835497-g4befc5"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778835497-g4befc5/amp-darwin-arm64"
      sha256 "742c9ef10821570bb91fe7dd293bfbd5028ac91f8be0d84afaae66617e711d9d"
    else
      url "https://static.ampcode.com/cli/0.0.1778835497-g4befc5/amp-darwin-x64"
      sha256 "b46ab327655ea4b457a4fca0f904441aa4774bd6d91ffc1169fd868edb5317f3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778835497-g4befc5/amp-linux-arm64"
      sha256 "842b7edbb1195863c0e6a2d90812746f3a4eafd21580109260d767a4cd214659"
    else
      url "https://static.ampcode.com/cli/0.0.1778835497-g4befc5/amp-linux-x64"
      sha256 "660804cda2c3bfa4f02387c6a7c9382bab0bcdc98a36e3b472451432053c1c5b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
