class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789732847-gb0ffc1"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789732847-gb0ffc1/amp-darwin-arm64"
      sha256 "d47fd9da8bf36467a5c25676d70fc3d3dee0d42bf5b4e678210a01de4813ba85"
    else
      url "https://static.ampcode.com/cli/0.0.1789732847-gb0ffc1/amp-darwin-x64"
      sha256 "31ebfb04e66f13eb8f06b6084d86edd2021b1d4beb01710d5b353a9798f6a238"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789732847-gb0ffc1/amp-linux-arm64"
      sha256 "6c47450b36f316aca83d766919a1a08373e5909fd92f5e332dafbbba779e6e7b"
    else
      url "https://static.ampcode.com/cli/0.0.1789732847-gb0ffc1/amp-linux-x64"
      sha256 "e9fb7ee0f7cc0f61328e01fe7e62a1973e58f3e0ec39bf4e5fbe66a6db02f234"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
