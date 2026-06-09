class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780969641-gdcafc7"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780969641-gdcafc7/amp-darwin-arm64"
      sha256 "4a5450624ef8b6061a3c1f39aedff24c6bc313244d2f262d7ddf5619ff91d81a"
    else
      url "https://static.ampcode.com/cli/0.0.1780969641-gdcafc7/amp-darwin-x64"
      sha256 "fd01fd1a0d5b373cf1a7c5f6fea270934b0655800c56d0d969bb5e9e1f6d25a8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780969641-gdcafc7/amp-linux-arm64"
      sha256 "6ddd8a0a7787b401cfba217a4f6a087cf1a6c25c12821fedd458236701e7af67"
    else
      url "https://static.ampcode.com/cli/0.0.1780969641-gdcafc7/amp-linux-x64"
      sha256 "ff32f1fb93c861f39bb597a0c95145af01a685840b8c69329b0da106086d0988"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
