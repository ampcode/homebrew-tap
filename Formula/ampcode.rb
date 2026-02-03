class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770093060-gdd7d46"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770093060-gdd7d46/amp-darwin-arm64"
      sha256 "6c5f1d4e8ed17fbd9600339f43bc79edfe54b0fafb86cd32304035d09c717808"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770093060-gdd7d46/amp-darwin-x64"
      sha256 "fc2afa7917d475993ff0a56d250b906979e1b3ec07be5cfcfd9169033fec592e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770093060-gdd7d46/amp-linux-arm64"
      sha256 "73ecbd021b9f7c6eb112264d4571494af85dd61d0b46a798689961c502272615"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770093060-gdd7d46/amp-linux-x64"
      sha256 "aa6aa41252970517d937d77972788e615dce0edeaf5c3e2f37d932566d3fcc63"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
