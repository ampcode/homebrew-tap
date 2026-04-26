class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777184774-g5a2bb8"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777184774-g5a2bb8/amp-darwin-arm64"
      sha256 "69e32b78746d9432cce8d3df302fede81cf8872bf325279fd90fb3ff4845b99b"
    else
      url "https://static.ampcode.com/cli/0.0.1777184774-g5a2bb8/amp-darwin-x64"
      sha256 "088bd1c6809cdcd17f552d2262a97f32e5f611a66e1c5c3f4031a7650363d433"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777184774-g5a2bb8/amp-linux-arm64"
      sha256 "703510455f0804b3718b54cbce8dba4d689f0a2032ae8b4b061998fbf74fba85"
    else
      url "https://static.ampcode.com/cli/0.0.1777184774-g5a2bb8/amp-linux-x64"
      sha256 "ce2a1557b653c7a9e5658cd4c9700710389af0374017c0466f1f43680719b613"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
