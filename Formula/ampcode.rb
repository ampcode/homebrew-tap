class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773619520-gac3eed"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773619520-gac3eed/amp-darwin-arm64"
      sha256 "558f80d25a28c6941fb111d4f244ef34c6505f8d46e2519a9e7fca8024c7e9a2"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773619520-gac3eed/amp-darwin-x64"
      sha256 "f564ba6efc44be692b18a3f544bb954deee6bb898a6832ca7e336a33b9ba4899"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773619520-gac3eed/amp-linux-arm64"
      sha256 "3b65c23bb047ba77e7ccafa5744d46334ebc43d23a073f269979e9bee2277975"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773619520-gac3eed/amp-linux-x64"
      sha256 "2ddd3f793744f1685f6e02cb7646b7aff5a2b327e6e6fa7765013ceb0ef22879"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
