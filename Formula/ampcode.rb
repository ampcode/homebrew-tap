class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784014549-g51e7e3"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784014549-g51e7e3/amp-darwin-arm64"
      sha256 "23ab213f619e3a435b090e0c883a04901eccc8f4c77361370aa9f2c83fc30657"
    else
      url "https://static.ampcode.com/cli/0.0.1784014549-g51e7e3/amp-darwin-x64"
      sha256 "9a526463a4d84330139993f757d062010a91ac4f9c04e3fb56e665e33e28051d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784014549-g51e7e3/amp-linux-arm64"
      sha256 "52f8c6a8e3d160fb4465fc3165cce06a2cf2a5f8753f3f6e0892b142f604d3ec"
    else
      url "https://static.ampcode.com/cli/0.0.1784014549-g51e7e3/amp-linux-x64"
      sha256 "52200e6e5c0fe7eae39f8706b94c627bc15f0642d3c131a8d37d001163846e8b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
