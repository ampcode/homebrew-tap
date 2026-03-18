class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773821361-g6efe74"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773821361-g6efe74/amp-darwin-arm64"
      sha256 "157a123107d9377f69185ee30f2fc15ccc64bbaff21fc26ecf0a9c072c7c377b"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773821361-g6efe74/amp-darwin-x64"
      sha256 "c5c77f4c32c3b87e39fc03799bebd39fdb55cb89b3d6f86a60d141f848dbcdec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773821361-g6efe74/amp-linux-arm64"
      sha256 "868e20c7fac1ec0f2df9d9d5521e9baa4b58a675ef1a5d6c715f99185dcf0f97"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773821361-g6efe74/amp-linux-x64"
      sha256 "0501137f610200ac11a0724f6b678033a1fe76624e1066d29ecb57d613c8848d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
