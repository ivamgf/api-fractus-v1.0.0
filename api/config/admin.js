module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', 'c3af6b7b72b49077abe09b3f23a9117f'),
  },
});
