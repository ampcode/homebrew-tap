class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773259524-g40fcc4"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773259524-g40fcc4/amp-darwin-arm64"
      sha256 "9a16040cfad43d25e8a63d8b7a22f2213aedda14654f7a4e361111c863764b21"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773259524-g40fcc4/amp-darwin-x64"
      sha256 "b9b07c27a71f3f1b659893877e8b8da45ed2a5fd7db6c36ea8a8562640b49538"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773259524-g40fcc4/amp-linux-arm64"
      sha256 "4b63f5fe43941c3fd0a09a83d6a9c437ba71d813ec8bc52bd7e90881d587805e"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773259524-g40fcc4/amp-linux-x64"
      sha256 "1d9c775f238c93ffc6d6bd8d76c1d42228b020c5740e45668be2694e2a67bfeb"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
